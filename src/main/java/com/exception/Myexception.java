package com.exception;

import org.apache.shiro.authz.AuthorizationException;
import org.apache.shiro.authz.UnauthorizedException;
import org.springframework.stereotype.Service;
import org.springframework.test.annotation.Commit;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Myexception implements HandlerExceptionResolver {
    @Override
    @ResponseBody
    public ModelAndView resolveException(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) {
        e.printStackTrace();
        ModelAndView mv = null;
        if(e instanceof UnauthorizedException){
            mv = new ModelAndView("unauthorized");
        }else if(e instanceof AuthorizationException){
            mv = new ModelAndView("login");
        }else {
            mv = new ModelAndView("error");
        }
        return mv;
    }
}
