package cap.service;

import cap.mapper.ProfileMapper;
import cap.mapper.UserMapper;
import cap.model.Profile;
import cap.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserMapper userMapper;

    @Resource
    private ProfileMapper profileMapper;

    public int register(User user) {
        if(findUserByUsername(user.getUsername()) == null) {
            int count = userMapper.insert(user);
            return  count;
        }
        else
            return 0;
    }

    public int insertProfile(Profile profile) {
        return profileMapper.insert(profile);
    }

    public int updateProfile(Profile profile) {
        return  profileMapper.updateByPrimaryKeySelective(profile);
    }

    public User findUserByUsername(String username){
        return userMapper.selectByUsername(username);
    }

    public  User login(User user) {
        if(user == null ) return  null;
        User u = findUserByUsername(user.getUsername());

        if(u == null ) return  null;
        if(u.getPassword().equals(user.getPassword())){
            return  u;
        }else {
            return null;
        }
    }
    public int updatePwdById(Integer id,String pwd) {
        User u = new User();
        u.setId(id);
        u.setPassword(pwd);
        return userMapper.updateByPrimaryKeySelective(u);
    }
    public User getUserById(Integer id){
        return userMapper.selectByPrimaryKey(id);
    }
}
