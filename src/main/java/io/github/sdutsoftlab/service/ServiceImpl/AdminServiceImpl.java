package io.github.sdutsoftlab.service.ServiceImpl;

import io.github.sdutsoftlab.mapper.MenuMapper;
import io.github.sdutsoftlab.mapper.UserMapper;
import io.github.sdutsoftlab.model.User;
import io.github.sdutsoftlab.service.AdminService;
import io.github.sdutsoftlab.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * @Author: Devhui
 * @Date: 2019-12-02 19:16
 * @Version 1.0
 */
@Service
@Transactional
public class AdminServiceImpl implements AdminService {
    @Autowired
    private UserMapper userMapper;

    @Autowired
    private MenuMapper menuMapper;


    @Override
    public String switchMenu(String menu) {
        int menuStatus = this.getMenuStatus(menu);
        if (menuStatus == 1) {
            int i = menuMapper.switchMenu(menu, 0);
            return i == 1 ? menu + ", 已关闭" : "err";
        } else {
            int i = menuMapper.switchMenu(menu, 1);
            return i == 1 ? menu + ", 已打开" : "err";
        }
    }

    @Override
    public int getMenuStatus(String menu) {
        return menuMapper.queryOK(menu);
    }

    @Override
    public List<User> fetchAllStudents() {
        return userMapper.fetchAllStudents();
    }
}
