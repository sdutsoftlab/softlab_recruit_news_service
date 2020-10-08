package io.github.sdutsoftlab.service.ServiceImpl;

import io.github.sdutsoftlab.mapper.MenuMapper;
import io.github.sdutsoftlab.mapper.UserMapper;
import io.github.sdutsoftlab.model.User;
import io.github.sdutsoftlab.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * @Author: Devhui
 * @Date: 2019-12-02 19:16
 * @Version 1.0
 */
@Service
@Transactional
public class UserServiceImpl implements UserService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public int addNews(User user) {
        return userMapper.addNews(user);
    }

    @Override
    public int query(String uid) {
        return userMapper.query(uid);
    }

    @Override
    public boolean isOk(String mname) {
        int i = menuMapper.queryOK(mname);
        if (i == 1) {
            return true;
        }
        return false;
    }

    @Override
    public String isExist(String uid) {
        return userMapper.isExist(uid);
    }
}
