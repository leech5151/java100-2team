package java100.app.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import java100.app.domain.Member;
import java100.app.service.BusinessService;
import java100.app.service.MemberService;

@Controller
@RequestMapping("/main")
@SessionAttributes("loginUser")
public class MainController {
    
    @Autowired MemberService memberService;
    @Autowired BusinessService businessService;
    
    @RequestMapping(value="home", method=RequestMethod.GET)
    public String form(Model model) {
        model.addAttribute("menuVisible", false);
        return "main/home";
    }
    
    @RequestMapping("start")
    public String main_list(
            @ModelAttribute(value="loginUser") Member loginUser,
            Model model) throws Exception {
        model.addAttribute("start", memberService.get(loginUser.getMemberNo()));
        return "main/home";
    }
    


    @RequestMapping("{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
        
        model.addAttribute("member", memberService.get(no));
        return "redirect:../member/view";
    }
}
 









