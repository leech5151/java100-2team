package java100.app.web;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.ServletContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

import java100.app.domain.Business;
import java100.app.domain.BusinessUploadFile;
import java100.app.domain.Member;
import java100.app.service.BusinessService;
import java100.app.service.MemberService;

@Controller
@SessionAttributes("loginUser")
public class SetterController {
    
    @Autowired ServletContext servletContext;
    @Autowired BusinessService businessService;
    @Autowired MemberService memberService;
    
    @RequestMapping("form")
    public String form(
            @ModelAttribute(value="loginUser") Member loginUser,
            Model model) throws Exception {
        model.addAttribute("start", memberService.get(loginUser.getMemberNo()));
        return "listToolbar";
    }
    
   
}








