package io.github.sdutsoftlab.Interceptor;

import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

/**
 * 全局异常捕获
 */
//@ControllerAdvice // 控制器切面
public class GlobalExceptionHandler {

    @ExceptionHandler(RuntimeException.class)
    @ResponseBody
    public Map<String, Object> exceptionHandler() {
        Map<String, Object> map = new HashMap<>();
        map.put("errorCode", -200);
        map.put("errorMsg", "系统错误");

        return map;
    }
}
