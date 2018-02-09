package java100.app.web.json;

import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

import java100.app.domain.Lost;
import java100.app.domain.Member;
import java100.app.domain.Pet;
import java100.app.service.LostService;
import java100.app.service.PetService;

@RestController
@RequestMapping("/pet")
@SessionAttributes("loginUser")
public class PetController {
    
    @Autowired ServletContext servletContext;
    @Autowired PetService petService;
    @Autowired LostService lostService;
    
    @RequestMapping("list")
    public Object list(
            @ModelAttribute(value="loginUser") Member loginUser) throws Exception {
        int searchNo = loginUser.getMemberNo();
        
        HashMap<String, Object> result = new HashMap<>();
        result.put("list", petService.list(searchNo));
        result.put("member", loginUser);
        result.put("status", "success");
        return result;
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
        Lost lost = new Lost();
        lost.setPetName(pet.getPetName());
        lost.setLostLocation("강남");
        lost.setLostDate("2017-11-12");
        lost.setCharacter("몰라");
        lost.setReward(1000000);
        lost.setRegistrant(loginUser);
        int count = lostService.add(lost);
        return "redirect:list";
    }

    @RequestMapping("delete")
    public Object delete(int petNo) throws Exception {

        petService.delete(petNo);
        HashMap<String, Object> result = new HashMap<>();
        result.put("status", "success");
        return result;
    }
}








