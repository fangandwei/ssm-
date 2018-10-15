package cn.itcast.dao;
import java.util.List;

import org.springframework.stereotype.Repository;

import cn.itcast.domain.User;
@Repository
public interface UserMapper {
public List<User> find();
}

