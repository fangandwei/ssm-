package cn.itcast.controller;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.itcast.domain.User;
import cn.itcast.service.UserService;
@Controller
@RequestMapping("/user")
public class UserController {

@Resource
private UserService userService;

@RequestMapping("/showUser")
public void toIndex(){
List<User> users = this.userService.find();
System.out.println(users);
}
}