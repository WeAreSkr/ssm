package cap.mapper;

import cap.model.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    int deleteByPrimaryKey(Integer id);


    int insert(User record);

    int insertSelective(User record);


    User selectByPrimaryKey(Integer id);


    int updateByPrimaryKeySelective(User record);


    int updateByPrimaryKey(User record);

    User selectByUsername(@Param("username") String username);
}