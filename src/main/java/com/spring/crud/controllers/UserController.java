package com.spring.crud.controllers;

import com.spring.crud.beans.User;
import com.spring.crud.dao.UserDao;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.sql.DataSource;
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
    public String save(@ModelAttribute("user") User user) {
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
