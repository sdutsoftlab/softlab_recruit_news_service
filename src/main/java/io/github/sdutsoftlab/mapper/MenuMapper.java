package io.github.sdutsoftlab.mapper;

import org.springframework.stereotype.Repository;

/**
 * @Author: Devhui
 * @Date: 2020/6/3 13:08
 * @Email: devhui@ihui.ink
 * @Version: 1.0
 */
@Repository
public interface MenuMapper {
    int queryOK(String mname);

    int switchMenu(String mname, int status);
}
