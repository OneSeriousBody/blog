package com.coderwzt.service;

import com.coderwzt.po.User;

/**
 * Created by fadeprogramerWZT on 2020/3/8.
 */
public interface UserService {

    User checkUser(String username,String password);

}
