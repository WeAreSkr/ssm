package cap.service;

import cap.mapper.ArticleMapper;
import cap.util.PageBean;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class ArticleService {
    @Resource
    private ArticleMapper articleMapper;

    public PageBean findAllArtitcleByPage(int pageNo,int pageSize) {
        PageBean pageBean = new PageBean();
        pageBean.setPageSize(pageSize);
        pageBean.setPageNo(pageNo);
        pageBean.setTotalRecords(articleMapper.getAllTotals());
        pageBean.setList(articleMapper.findPage((pageNo-1)*pageSize,pageSize));
        return  pageBean;
    }

}
