package cap.controller;

import cap.service.ArticleService;
import cap.util.PageBean;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;

@Controller
@RequestMapping("/")
public class IndexController {

    @Resource
    ArticleService articleService;


    @RequestMapping(value = "index",method = RequestMethod.GET)
    public String index(Model model,
                        @RequestParam(value = "pageno",required = false) Integer pageNo,
                        @RequestParam(value = "pagesize",required = false) Integer pageSize) {
        if(pageNo == null) pageNo = 1;
        if(pageSize == null ) pageSize = 5;
        PageBean pageBean = articleService.findAllArtitcleByPage(pageNo,pageSize);
        model.addAttribute("pageBean",pageBean);
        return "index";
    }
}
