package java100.app.web.json;

import java.util.HashMap;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import java100.app.domain.Member;
import java100.app.service.MemberService;

@RestController
@RequestMapping("/auth")
@SessionAttributes("loginUser")
public class LoginController {
    @Autowired MemberService memberService;
    
    @RequestMapping(value="login", method=RequestMethod.GET)
    public Object form() {
        
        HashMap<String, Object> result = new HashMap<>();
        
        result.put("menuVisible", false);
        return result;
    }

    @RequestMapping(value="login", method=RequestMethod.POST)
    public Object login(
            String email, 
            String password,
            String saveEmail,
            HttpServletResponse response,
            HttpSession httpSession,
            Model model) {
        
        Member member = memberService.get(email, password);
        
        if (saveEmail != null) {
            Cookie cookie = new Cookie("email", email);
            cookie.setMaxAge(60 * 60 * 24 * 30);
            response.addCookie(cookie);
        } else {
            Cookie cookie = new Cookie("email", "");
            cookie.setMaxAge(0);
            response.addCookie(cookie);
        }
        
        HashMap<String, Object> result = new HashMap<>();
        
        if (member == null) {
            result.put("loginUser", null);
            result.put("menuVisible", false);
            result.put("status", "fail");
        } else {
            model.addAttribute("loginUser", member);
            result.put("status", "success");
        }
        return result;
    }
    
    @RequestMapping("logout")
    public Object logout(HttpSession session, SessionStatus status) {
        
        // @SessionAttributes에서 관리하는 세션 데이터를 모두 제거한다.
        status.setComplete();
        
        // HttpSession 객체를 무효화시킨다.
        session.invalidate();
        
        HashMap<String, Object> result = new HashMap<>();
        result.put("status", "success");
        return result;
    }  
    
    @RequestMapping("loginUser")
    public Object loginUser(HttpSession session) {
        
        Member member = (Member)session.getAttribute("loginUser");
        
        HashMap<String,Object> result = new HashMap<>();
        
        if (member != null) {
//            result.put("loginInfo", member);
            result.put("member", memberService.get(member.getMemberNo()));
//            result.put("status", "success");
        } else {
            result.put("status", "fail");
        }
            
        return result;
    }
    
}
 









