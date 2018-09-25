package cap.service;

import cap.mapper.UserMapper;
import cap.model.User;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService {
    @Resource
    private UserMapper userMapper;

    public int register(User user) {
        if(findUserByUsername(user.getUsername()) == null)
            return userMapper.insert(user);
        else
            return 0;
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
}
