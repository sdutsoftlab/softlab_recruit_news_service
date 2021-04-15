package io.github.sdutsoftlab.controller;

import io.github.sdutsoftlab.config.SoftlabConfig;
import io.github.sdutsoftlab.model.ResultKit;
import io.github.sdutsoftlab.model.User;
import io.github.sdutsoftlab.service.AdminService;
import io.github.sdutsoftlab.service.UserService;
import io.github.sdutsoftlab.utils.ResultCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @Author: Devhui
 * @Date: 2019-11-28 17:05
 * @Version 1.0
 */

@RestController
@RequestMapping("admin")
public class AdminController {

    @Autowired
    private SoftlabConfig softlabConfig;

    @Autowired
    private UserService userService;

    @Autowired
    private AdminService adminService;

    @GetMapping("switch")
    @ResponseBody
    public ResultKit<Object> switchMenu(@RequestParam("menu") String menu,
                                        @RequestParam("secretKey") String secretKey) {
        ResultKit<Object> resultKit = new ResultKit<>();
        if (!secretKey.equals(softlabConfig.getSecretKey())) {
            resultKit.setMessage("权限不足");
            return resultKit;
        }
        String msg = adminService.switchMenu(menu);
        resultKit.setMessage(msg);
        resultKit.setCode(100);
        return resultKit;
    }

    @GetMapping("fetch")
    @ResponseBody
    public ResultKit<Object> fetchAllStudents(@RequestParam("secretKey") String secretKey, HttpServletRequest req) {
        ResultKit<Object> resultKit = new ResultKit<>();
        if (!secretKey.equals(softlabConfig.getSecretKey())) {
            resultKit.setMessage("权限不足");
            return resultKit;
        }
        List<User> users = adminService.fetchAllStudents();
        if (users != null) {
            resultKit.setCode(200);
            resultKit.setData(users);
            resultKit.setMessage("获取所有报名信息成功");
        } else {
            resultKit.setCode(-200);
            resultKit.setMessage("请求出错，联系管理员");
        }
        return resultKit;
    }

}
