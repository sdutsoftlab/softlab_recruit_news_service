package io.github.sdutsoftlab.service;

import io.github.sdutsoftlab.model.User;
import org.springframework.stereotype.Service;

/**
 * @Author: Devhui
 * @Date: 2019-12-02 19:15
 * @Version 1.0
 */
public interface UserService {
    // 登录检查
    int addNews(User user);

    // 查询
    int query(String uid);

    boolean isOk(String mname);

    // 检查是否存在
    String isExist(String uid);
}
