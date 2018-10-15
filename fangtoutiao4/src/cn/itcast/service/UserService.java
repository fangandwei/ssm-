package cn.itcast.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.itcast.dao.UserMapper;
import cn.itcast.domain.User;

@Service
public class UserService {

@Resource
UserMapper userdao;

public List<User> find(){
return userdao.find();
}

}