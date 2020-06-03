package com.shiro;

import com.dao.UsersDao;
import com.entity.Users;
import org.apache.shiro.authc.*;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserReaml extends AuthorizingRealm {

    @Autowired
    UsersDao usersDao;

    //授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        SimpleAuthorizationInfo authorizationInfo = new SimpleAuthorizationInfo();
        authorizationInfo.setRoles(usersDao.queryUserRoles(principalCollection.toString()));
        authorizationInfo.setStringPermissions(usersDao.queryUserPerms(principalCollection.toString()));
        return authorizationInfo;
    }

    //验证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String userName = token.getPrincipal().toString();
        Users users = usersDao.queryByUsername(userName);
        if(users == null){
            throw new UnknownAccountException("账户未找到");
        }else {
            return new SimpleAuthenticationInfo(token.getPrincipal(),users.getUPass(),getName());
        }

    }
}
