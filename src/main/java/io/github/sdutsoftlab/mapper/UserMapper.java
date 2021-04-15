package io.github.sdutsoftlab.mapper;

import io.github.sdutsoftlab.model.User;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @Author: Devhui
 * @Date: 2019-12-02 19:09
 * @Version 1.0
 */
@Repository
public interface UserMapper {
    // 添加
    int addNews(User user);

    // 检查是否存在
    String isExist(String uid);

    // 查询
    int query(String uid);

    // 拉取所有
    List<User> fetchAllStudents();
}
