package java100.app.web.json;

import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import java100.app.domain.Diagnosis;
import java100.app.domain.Hospital;
import java100.app.domain.Member;
import java100.app.service.DiagnosisService;


@RestController
@RequestMapping("/diagnosis")
@SessionAttributes("loginUser") 
public class DiagnosisController {
    
    @Autowired ServletContext servletContext;
    @Autowired DiagnosisService diagnosisService;
    
    
    @RequestMapping("list")
    public Object list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="5") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align
            )throws Exception{  if (pageNo < 1) {
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
            
            
            HashMap<String,Object> result = new HashMap<>();
            
            result.put("pageNo", pageNo);
            result.put("lastPageNo", lastPageNo);
            result.put("list", diagnosisService.list(pageNo, pageSize, options));
            
            return result;
    }
    

   @RequestMapping("add")
    public Object add(
            Diagnosis diagnosis,
            @ModelAttribute(value="loginUser") Member loginUser,Hospital hospital 
            ) throws Exception {
        diagnosis.setMember(loginUser);
        System.out.println(hospital.getHospitalNo());
        diagnosis.setHospital(hospital);
        System.out.println("----------------------------");
        System.out.println(diagnosis.getHospital().getHospitalNo());
        System.out.println("----------------------------");
        diagnosisService.add(diagnosis);
        HashMap<String,Object> result = new HashMap<>();
        result.put("status","success");
        return result;
    }
   
    @RequestMapping("{no}")
    public Object view(@PathVariable int no) throws Exception {
        HashMap<String, Object> result = new HashMap<>();
        result.put("data", diagnosisService.get(no));
        return result;
    }

    @RequestMapping("update")
    public Object update(Diagnosis diagnosis) throws Exception {
        
        diagnosisService.update(diagnosis);
        System.out.println(diagnosis.getDiagnosisNo());
        HashMap<String,Object> result = new HashMap<>();
        result.put("status","success");
        
        return result;
    }

    @RequestMapping("delete")
    public Object delete(int no) throws Exception {
        diagnosisService.delete(no);
        HashMap<String,Object> result = new HashMap<>();
        result.put("status","success");
        
        return result;
    }
    
    
    
    @RequestMapping("form")
    public Object findByMemberNo(@ModelAttribute(value="loginUser") Member loginUser) throws Exception{
        int no = loginUser.getMemberNo();
        System.out.println(no);
        HashMap<String,Object> result = new HashMap<>();
        result.put("data", diagnosisService.getHospitalNo(no));
        return result;
    }


}