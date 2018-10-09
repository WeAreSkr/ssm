package cap.controller;

import cap.model.Profile;
import cap.model.User;
import cap.model.bridge.ProfileAndUser;
import cap.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Map;

@Controller
@RequestMapping("/user")
public class UserController {
    @Resource
    private UserService userService;

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(Model model,User user) {
        user.setIsDelete(false);
        user.setIsApplied(true);
        user.setIsProfile(false);
        if(userService.register(user) < 1) {
            model.addAttribute("errMsg","失败,可能用户名已存在");
        }else {
            model.addAttribute("succMsg","成功");
        }
        return "register";
    }

    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String register() {
        return "register";
    }

    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String login() {
        return "login";
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String login(Model model, User user, HttpServletRequest request, HttpServletResponse response) {
        User u = userService.login(user);
        if(u == null) {
            if(model != null)
                model.addAttribute("errMsg","登录失败");
            return "/user/login";
        }else {
            request.getSession().setAttribute("user",u);
            if(model != null)
                model.addAttribute("sucMsg","登录成功");
            try {
                response.sendRedirect("/index");
            } catch (IOException e) {
                e.printStackTrace();
            }
            return null;
        }
    }
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public void logout(HttpServletRequest request,HttpServletResponse response) {
        request.getSession().removeAttribute("user");
        try {
            response.sendRedirect("/index");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    @RequestMapping(value = "/profile",method = RequestMethod.GET)
    public String profile(Model model,HttpServletRequest request, HttpServletResponse response) {
        return "profile";
    }

    @RequestMapping(value = "/profile",method = RequestMethod.POST)
    public String updateProfile(Profile profile, User user, ProfileAndUser profileAndUser,HttpServletRequest request, HttpServletResponse response){

        profile.setUserId(profileAndUser.getpId());
        user.setId(profileAndUser.getuId());

        if(user.getProfile() == null) {
            profile.setUserId(user.getId());
            userService.insertProfile(profile);
            login(null,user,request,response);
        }else {
            profile.setUserId(user.getId());
            userService.updateProfile(profile);
            login(null,user,request,response);
        }
        return "/index";
<<<<<<< HEAD
    }
    @RequestMapping(value = "/updatepass",method = RequestMethod.POST)
    public String updatepass(Model model,
                             @RequestParam("password") String password ,
                             @RequestParam("newpassword") String newpassword,
                             @RequestParam("userid")Integer userId){
        User u1=userService.getUserById(userId);
        if(u1 !=null && u1.getPassword().equals(password)){

                int res=userService.updatePwdById(userId, newpassword);
                if (res > 0) {
                    model.addAttribute("succUpdateMsg", "修改密码成功！");
                } else {
                    model.addAttribute("errorUpdateMsg", "修改密码失败！");
                }
        }else
        {
           model.addAttribute("validPwdMsg", "旧密码验证失败，请重新填写！");
        }
        return "profile";

=======
>>>>>>> 00ab4c4... 主页分页显示
    }

}
