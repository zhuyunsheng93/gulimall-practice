package com.zsy.member.exception;

/**
 * @Description:
 * @author zsy
 * @email 1917222727@qq.com
 * @createTime: 2020-06-27 16:04
 **/
public class PhoneException extends RuntimeException {
    public PhoneException() {
        super("存在相同的手机号");
    }
}
