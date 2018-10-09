package cap.mapper;

import cap.model.Article;
import cap.model.ArticleWithBLOBs;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface ArticleMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    int insert(ArticleWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    int insertSelective(ArticleWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    ArticleWithBLOBs selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    int updateByPrimaryKeySelective(ArticleWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    int updateByPrimaryKeyWithBLOBs(ArticleWithBLOBs record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table article
     *
     * @mbg.generated
     */
    int updateByPrimaryKey(Article record);




    public List<ArticleWithBLOBs> findPage(@Param("start")Integer start, @Param("pageSize") Integer pageSize);
<<<<<<< HEAD
    public List<ArticleWithBLOBs> findPageByUserId(@Param("userId")Integer userId,@Param("start")Integer start, @Param("pageSize") Integer pageSize);
    public Integer getAllTotals();
    public Integer getTotalsByUserId(@Param("userId") Integer userId);
=======
    public Integer getAllTotals();

>>>>>>> 00ab4c4... 主页分页显示
}