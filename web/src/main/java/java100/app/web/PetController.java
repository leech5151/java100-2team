package java100.app.web;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
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
            @ModelAttribute(value="loginUser") Member loginUser,
            Model model) throws Exception {
        int searchNo = loginUser.getMemberNo();
        model.addAttribute("list", petService.list(searchNo));
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








