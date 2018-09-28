package cap.controller;

import cap.mapper.ArticleMapper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

@Controller
@RequestMapping("/")
public class ArticleController {
    @Resource
    private ArticleMapper articleMapper;

}
