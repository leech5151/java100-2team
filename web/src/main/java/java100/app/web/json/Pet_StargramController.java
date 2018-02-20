package java100.app.web.json;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import java100.app.domain.Member;
import java100.app.domain.Pet_Stargram;
import java100.app.domain.Pet_StargramUploadFile;
import java100.app.service.Pet_StargramService;

@RestController
@RequestMapping("/pet_stargram")
@SessionAttributes("loginUser")
public class Pet_StargramController {
    
    @Autowired ServletContext servletContext;
    @Autowired Pet_StargramService pet_stargramService;
     
    @RequestMapping("list")
    public Object list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="5") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align) throws Exception {

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
        
        int totalCount = pet_stargramService.getTotalCount();
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        HashMap<String, Object> result = new HashMap<>();
        // view 컴포넌트가 사용할 값을 Model에 담는다.
        result.put("pageNo", pageNo);
        result.put("lastPageNo", lastPageNo);
        result.put("list", pet_stargramService.list(pageNo, pageSize, options));
        return result;
    }
    
    

    @RequestMapping("add")
    public Object add(
            Pet_Stargram pet_stargram,
           @ModelAttribute(value="loginUser") Member loginUser,
            MultipartFile[] file
            ) throws Exception {
        
        String uploadDir = servletContext.getRealPath("/download");

        ArrayList<Pet_StargramUploadFile> uploadFiles = new ArrayList<>();
        
        for (MultipartFile part : file) {
            if (part.isEmpty())
                continue;
            
            String filename = this.writeUploadFile(part, uploadDir);
            
            uploadFiles.add(new Pet_StargramUploadFile(filename));
        }
        
        pet_stargram.setFiles(uploadFiles);
        pet_stargram.setMember(loginUser);
        pet_stargramService.add(pet_stargram);
        
        HashMap<String,Object> result = new HashMap<>();
        result.put("status", "success");
        
        return result;
        
    }

    @RequestMapping("{no}")
    public Object view(@PathVariable int no) throws Exception {
        
        HashMap<String,Object> result = new HashMap<>();
        result.put("data", pet_stargramService.get(no));
        return result;
    }

    @RequestMapping("update")
    public Object update(
            Pet_Stargram pet_stargram, 
            MultipartFile[] file) throws Exception {
        
        String uploadDir = servletContext.getRealPath("/download");

        ArrayList<Pet_StargramUploadFile> uploadFiles = new ArrayList<>();
        
        for (MultipartFile part : file) {
            if (part.isEmpty())
                continue;
            
            String filename = this.writeUploadFile(part, uploadDir);
            
            uploadFiles.add(new Pet_StargramUploadFile(filename));
        }
        
        pet_stargram.setFiles(uploadFiles);
        pet_stargramService.update(pet_stargram);
        HashMap<String,Object> result = new HashMap<>();
        result.put("status", "success");
        
        return result;
    }

    @RequestMapping("delete")
    public Object delete(int no) throws Exception {

        pet_stargramService.delete(no);
        
        HashMap<String,Object> result = new HashMap<>();
        result.put("status", "success");
        
        return result;
    }

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








