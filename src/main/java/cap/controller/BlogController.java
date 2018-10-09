package cap.controller;

import cap.service.ArticleService;
import cap.service.BlogService;
import cap.util.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
public class BlogController {
    @Resource
    BlogService blogService;


    @RequestMapping(value = "myblog",method = RequestMethod.GET)
    public String myblog(Model model,
                        @RequestParam(value = "userId",required = true) Integer userId,
                        @RequestParam(value = "curPage",required = false) Integer pageNo,
                        @RequestParam(value = "pagesize",required = false) Integer pageSize) {
        if(pageNo == null) pageNo = 1;
        if(pageSize == null ) pageSize = 5;
        PageBean pageBean = blogService.findAllArticle(userId,pageNo,pageSize);
        model.addAttribute("pc",pageBean);
        return "myblogindex";
    }

}
