package cap.service;

import cap.mapper.ArticleMapper;
import cap.util.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class BlogService {

    @Resource
    private ArticleMapper articleMapper;

    public PageBean findAllArticle(int userid,int pageno,int pagesize) {
        PageBean pageBean = new PageBean();
        pageBean.setList(articleMapper.findPageByUserId(userid,(pageno-1)*pagesize,pagesize));
        pageBean.setPageNo(pageno);
        pageBean.setPageSize(pagesize);
        pageBean.setTotalRecords(articleMapper.getTotalsByUserId(userid));
        return  pageBean;
    }
}
