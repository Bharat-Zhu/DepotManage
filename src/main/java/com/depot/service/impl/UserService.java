package com.depot.service.impl;

import com.depot.dao.IUserDao;
import com.depot.models.User;
import com.depot.service.IUserService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;

@Service
public class UserService implements IUserService {

    @Resource
    private IUserDao userDao;

    public User getUserByNumber(String userNumber) {
        return userDao.selectByUserNumber(userNumber);
    }
}
