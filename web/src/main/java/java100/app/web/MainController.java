package java100.app.web;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java100.app.domain.Member;
import java100.app.service.MemberService;

@Controller
@RequestMapping("/main")
@SessionAttributes("loginUser")
public class MainController {
    
//    @Autowired ServletContext servletContext;
    @Autowired MemberService memberService;
    
    @RequestMapping(value="home", method=RequestMethod.GET)
    public String form(Model model) {
        model.addAttribute("menuVisible", false);
        return "main/home";
    }
    
    @RequestMapping("main_list")
    public String main_list(
            @ModelAttribute(value="loginUser") Member loginUser,
            Model model) throws Exception {
        model.addAttribute("main_list", memberService.get(loginUser.getMemberNo()));
        System.out.println(loginUser.getMemberNo());
        return "main/home";
    }

}
 









