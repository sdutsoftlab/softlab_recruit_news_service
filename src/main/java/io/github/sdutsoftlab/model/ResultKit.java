package io.github.sdutsoftlab.model;

/**
 * @Author: Devhui
 * @Date: 2019-11-28 17:05
 * @Version 1.0
 */

import lombok.Data;

@Data
public class ResultKit<T> {
    private int code; // 响应码
    private String message; // 响应消息
    private T data;
}
