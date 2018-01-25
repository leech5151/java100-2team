package java100.app.web;

import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.Diagnosis;
import java100.app.service.DiagnosisService;


@Controller
@RequestMapping("/diagnosis")
public class DiagnosisController {
    @Autowired ServletContext servletContext;
    @Autowired DiagnosisService diagnosisService;
    
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="5") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
            Model model)throws Exception{  if (pageNo < 1) {
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
            
            int totalCount = diagnosisService.getTotalCount();
            int lastPageNo = totalCount / pageSize;
            if ((totalCount % pageSize) > 0) {
                lastPageNo++;
            }
            
            // view 컴포넌트가 사용할 값을 Model에 담는다.
            model.addAttribute("pageNo", pageNo);
            model.addAttribute("lastPageNo", lastPageNo);
            model.addAttribute("list", diagnosisService.list(pageNo, pageSize, options));
            return "diagnosis/list";
    }
    
    @RequestMapping("form")
    public String form() throws Exception {
        return "diagnosis/form";
        
    }

    @RequestMapping("add")
    public String add(
            Diagnosis diagnosis

//            @ModelAttribute(value="loginUser") Member loginUser
            ) throws Exception {
        
        // 게시글 작성자는 로그인 사용자이다. 
//        member.setWriter(loginUser);
        
        // 게시글 등록
        //diagnosis.setHospital(hospital);
        //diagnosis.setMember(member);
        
        diagnosisService.add(diagnosis);
        
        return "redirect:list";
    }

    @RequestMapping("{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
        
        model.addAttribute("diagnosis", diagnosisService.get(no));
        return "diagnosis/view";
    }

    @RequestMapping("update")
    public String update(Diagnosis diagnosis) throws Exception {
        
        diagnosisService.update(diagnosis);
        
        return "redirect:list";
    }

    @RequestMapping("delete")
    public String delete(int no) throws Exception {
        diagnosisService.delete(no);
        return "redirect:list";
    }

    

}