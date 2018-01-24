package java100.app.web;

import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java100.app.domain.Member;
import java100.app.domain.Pet;
import java100.app.service.PetService;

@Controller
@RequestMapping("/pet")
@SessionAttributes("loginUser")
public class PetController {
    
    @Autowired ServletContext servletContext;
    @Autowired PetService petService;
    
    @RequestMapping("list")
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="5") int pageSize,
            @RequestParam(value="words", required=false) String[] words,
            @RequestParam(value="oc", required=false) String orderColumn,
            @RequestParam(value="al", required=false) String align,
            Model model) throws Exception {

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
        
        int totalCount = petService.getTotalCount();
        int lastPageNo = totalCount / pageSize;
        if ((totalCount % pageSize) > 0) {
            lastPageNo++;
        }
        
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        model.addAttribute("list", petService.list(pageNo, pageSize, options));
        
        return "pet/list";
    }
    
    @RequestMapping("form")
    public String form() throws Exception {
        return "pet/form";
        
    }
    
    @RequestMapping("add")
    public String add(
            Pet pet,
            @ModelAttribute(value="loginUser") Member loginUser
            ) throws Exception {
        
        pet.setMemberNo(loginUser.getMemberNo());
        petService.add(pet);
        return "redirect:list";
    }
    

    @RequestMapping("delete")
    public String delete(int petNo) throws Exception {

        petService.delete(petNo);
        return "redirect:list";
    }
}








