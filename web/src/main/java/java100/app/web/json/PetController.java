package java100.app.web.json;

import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;

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
        System.out.println(loginUser.getMemberNo());
        result.put("status", "success");
        return result;
    }
    
    @RequestMapping("add")
    public Object add(
            Pet pet,
            @ModelAttribute(value="loginUser") Member loginUser
            ) throws Exception {
        
        HashMap<String, Object> result = new HashMap<>();
        pet.setMemberNo(loginUser.getMemberNo());
        petService.add(pet);
        result.put("status", "success");
        return result;
    }

    @RequestMapping("delete")
    public Object delete(int petNo) throws Exception {

        petService.delete(petNo);
        HashMap<String, Object> result = new HashMap<>();
        result.put("status", "success");
        return result;
    }
}








