package java100.app.web;

import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java100.app.domain.Score;
import java100.app.service.ScoreService;
 
@Controller        
@RequestMapping("/score")
public class ScoreController { 
    
    @Autowired ScoreService scoreService; // 수정했음
    //수정해봅시다
    @RequestMapping("list")//수정2
    public String list(
            @RequestParam(value="pn", defaultValue="1") int pageNo,
            @RequestParam(value="ps", defaultValue="5") int pageSize,
            @RequestParam(value="word", required=false) String[] words,
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
        options.put("names", words);
        options.put("orderColumn", orderColumn);
        options.put("align", align);
        
        int totalCount = scoreService.getTotalCount();
        int lastPageNo = totalCount / pageSize;
        if(totalCount % pageSize > 0) {
            lastPageNo++;
        }
        
        model.addAttribute("pageNo", pageNo);
        model.addAttribute("lastPageNo", lastPageNo);
        model.addAttribute("list", scoreService.list(pageNo,  pageSize, options));
        return "score/list";
    }
    
    @RequestMapping("{no}")
    public String view(@PathVariable int no, Model model) throws Exception {
        
        model.addAttribute("score", scoreService.get(no));
        return "score/view";        
    }
    
    @RequestMapping("form")
    public String form() throws Exception {
        return "score/form";
    }
    
    @RequestMapping("add")
    public String add(Score score) throws Exception {
        
        scoreService.add(score);
        return "redirect:list";
    }
    
    @RequestMapping("delete")
    public String delete(int no) throws Exception {
        
        scoreService.delete(no);
        return "redirect:list";
    }
    
    // 송우정
    @RequestMapping("update")
    public String update(Score score) throws Exception {
        
        scoreService.update(score); //욷=절 dskfj

        return "redirect:list";   //이승서
    // 송우정
    }    
        //이승서다 이놈아아아아아
        //안니오오오오오오오오오오오옹  
        //아 집에좀 갑시다
    // 송우정
    
    // 송우정
    
}








