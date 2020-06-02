package com.dao;

import com.entity.Users;

import java.security.SecureRandom;
import java.util.Set;

public interface UserDao {
    Set<String> queryUserRoles(String userName);
    Set<String> queryUserPerms(String userName);
    Users queryByUsername(String userName);
}
