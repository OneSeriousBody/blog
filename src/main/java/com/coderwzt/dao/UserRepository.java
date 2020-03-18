package com.coderwzt.dao;

import com.coderwzt.po.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * Created by fadeprogramerWZT on 2020/3/8.
 */
public interface UserRepository extends JpaRepository<User,Long> {

    User findByUsernameAndPassword(String username,String password);
}
