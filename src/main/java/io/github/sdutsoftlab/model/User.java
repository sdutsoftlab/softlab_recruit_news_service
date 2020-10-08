package io.github.sdutsoftlab.model;

import lombok.Data;

@Data
public class User {
    private String uid;
    private String name;
    private String gender;
    private String qq;
    private String className;
    private String profile;
    private Byte status;
}
