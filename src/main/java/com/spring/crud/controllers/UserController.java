package com.spring.crud.controllers;

import com.spring.crud.beans.User;
import com.spring.crud.dao.UserDao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private SqlSessionFactory sqlFactory;
    @Autowired
    UserDao dao;

    @GetMapping("/join")
    public String join(Model model) {
        model.addAttribute("command",new User());
        return "joinForm";
    }
    @PostMapping("/save")
    public String save(@ModelAttribute("user") User user, @RequestParam("file_upload") CommonsMultipartFile file, HttpSession s) {
        byte[] data = file.getBytes();
        String filePath = s.getServletContext().getRealPath("/")
                + "resources" + File.separator
                + "image" + File.separator + file.getOriginalFilename();

        try {
            FileOutputStream fileout = null;
            fileout = new FileOutputStream(filePath);
            fileout.write(data);
            fileout.close();
            user.setPhoto(file.getOriginalFilename());
        } catch (FileNotFoundException e) {
            throw new RuntimeException(e);
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
        dao.insert(user);
        return "redirect:/viewusers";
    }
    @GetMapping("/viewusers")
    public String viewUsers(Model m) {
        Connection con= null;
        try {
            SqlSession session = sqlFactory.openSession();
            System.out.println("성공 : " + session);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        List<User> list = dao.selectAll();
        m.addAttribute("list",list);
        return "viewusers";
    }
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable int id,Model model) {
        User user = dao.selectById(id);
        model.addAttribute("command",user);
        return "editForm";
    }
    @PostMapping("/edit/edituser")
    public String editUser(@ModelAttribute("user") User user) {
        dao.update(user);
        return "redirect:/viewusers";
    }
    @GetMapping("/deleteuser/{id}")
    public String deleteUser(@PathVariable int id) {
        dao.deleteUser(id);
        return "redirect:/viewusers";
    }



}
