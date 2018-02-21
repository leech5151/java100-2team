package java100.app.web.json;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import java100.app.domain.Member;
import java100.app.domain.MemberUploadFile;
import java100.app.service.MemberService;

@RestController
@RequestMapping("/member")
@SessionAttributes("loginUser")
public class MemberController {
    
    @Autowired ServletContext servletContext;
    @Autowired MemberService memberService;
    @Autowired LoginController loginController;
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="5") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
            Model model) throws Exception {

        // UI 제어와 관련된 코드는 이렇게 페이지 컨트롤러에 두어야 한다.
        //
        if (pageNo < 1) {
            pageNo = 1;
        }
        
        if (pageSize < 5 || pageSize > 15) {
            pageSize = 5;
        }
        
        HashMap<String,Object> options = new HashMap<>();
        if (words != null && words[0].length() > 0) {
            options.put("words", words);
        }
        options.put("orderColumn", orderColumn);
        options.put("align", align);
        
        int totalCount = memberService.getTotalCount();
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        model.addAttribute("list", memberService.list(pageNo, pageSize, options));
        return "member/list";
    }
    
    @RequestMapping("add")
    public Object add(
            Member member,
            MultipartFile[] file,
            Model model) throws Exception {
        
        String uploadDir = servletContext.getRealPath("/download");

        ArrayList<MemberUploadFile> uploadFiles = new ArrayList<>();
        
        for (MultipartFile part : file) {
            if (part.isEmpty())
                continue;
            
            String filename = this.writeUploadFile(part, uploadDir);
            
            uploadFiles.add(new MemberUploadFile(filename));
        }
        
        member.setFiles(uploadFiles);

        memberService.add(member);
        System.out.println(member.getPassword());
        HashMap<String, Object> result = new HashMap<>();
        memberService.get(member.getMemberNo());
        result.put("email", member.getEmail());
        result.put("password", member.getPassword());
        
        return result;
    }
    
    @RequestMapping("{no}")
    public Object view(@PathVariable int no) throws Exception {
        HashMap<String,Object> result = new HashMap<>();
        result.put("member", memberService.get(no));
        return result;
    }
    
    @RequestMapping("modify")
    public Object modify(int no) throws Exception {
        
        HashMap<String,Object> result = new HashMap<>();
        result.put("num", no);
        return result;
    }

    @RequestMapping("update")
    public Object update(
            Member member, 
            MultipartFile[] file) throws Exception {

        String uploadDir = servletContext.getRealPath("/download");

        ArrayList<MemberUploadFile> uploadFiles = new ArrayList<>();
        
        for (MultipartFile part : file) {
            if (part.isEmpty())
                continue;
            
            String filename = this.writeUploadFile(part, uploadDir);
            
            uploadFiles.add(new MemberUploadFile(filename));
        }
        
        member.setFiles(uploadFiles);

        memberService.update(member);
        if (member.getPush()) 
            System.out.println("true");
        else
            System.out.println("false");
        
        HashMap<String, Object> result = new HashMap<>();
        result.put("member", member);
        return result;
    }
/*
    @RequestMapping("delete")
    public String delete(int no) throws Exception {

        memberService.delete(no);
        return "redirect:list";
    }
*/ 
    long prevMillis = 0;
    int count = 0;
    
    // 다른 클라이언트가 보낸 파일명과 중복되지 않도록 
    // 서버에 파일을 저장할 때는 새 파일명을 만든다.
    synchronized private String getNewFilename(String filename) {
        long currMillis = System.currentTimeMillis();
        if (prevMillis != currMillis) {
            count = 0;
            prevMillis = currMillis;
        }
        
        return  currMillis + "_" + count++ + extractFileExtName(filename); 
    }
    
    // 파일명에서 뒤의 확장자명을 추출한다.
    private String extractFileExtName(String filename) {
        int dotPosition = filename.lastIndexOf(".");
        
        if (dotPosition == -1)
            return "";
        
        return filename.substring(dotPosition);
    }
    
    private String writeUploadFile(MultipartFile part, String path) throws IOException {
        
        String filename = getNewFilename(part.getOriginalFilename());
        part.transferTo(new File(path + "/" + filename));
        return filename;
    }  

}








