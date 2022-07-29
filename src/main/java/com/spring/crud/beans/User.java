package com.spring.crud.beans;

import lombok.*;
import org.springframework.web.multipart.MultipartFile;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class User {
    private int id;
    private String name;
    private String phone_num;
    private String username;
    private String password;
    private String email;
    private String photo;
}
