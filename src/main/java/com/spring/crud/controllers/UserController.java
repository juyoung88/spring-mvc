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
import java.util.Objects;

@Controller
public class UserController {

    @Autowired
    UserDao dao;

    @GetMapping("popup")
    public String popup() {
        return "popup";
    }
    @PostMapping("login")
    public String login(HttpSession session, User user) {
//        if(Objects.equals(user.getUsername(), "admin"))
//            return "redirect:/adminLogin";
        String returnURL="";
        if(session.getAttribute("login")!=null)
            session.removeAttribute("login");
        User loginUser= dao.getUser(user);
        if(loginUser!=null) {
            session.setAttribute("login",loginUser);
            if(Objects.equals(loginUser.getUsername(),"admin"))
                return "redirect:/adminLogin";
            returnURL="redirect:/afterLogin";
        }
        else {
            System.out.println("loginUser = " + loginUser);
            System.out.println("로그인 실패");
            returnURL="redirect:/popup";
        }
        return returnURL;
    }
    @GetMapping("/adminLogin")
    public String adminLogin() {
        return "/admin-login";
    }
    @GetMapping("afterLogin")
    public String afterLogin(HttpSession session, Model model) {
        Object obj = session.getAttribute("login");
        User user = (User)obj;
        model.addAttribute("loginUser",user);
        return "after-login";
    }
    @GetMapping("logout")
    public String logout(HttpSession session) {
        session.removeAttribute("login");
        session.invalidate();
        return "redirect:/popup";
    }
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
        System.out.println("user = " + user);
        dao.insert(user);
        return "redirect:/";
    }
    @GetMapping("adminLogin/viewusers")
    public String viewUsers(Model m) {
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
    public String editUser(@ModelAttribute("loginUser") User user) {
        dao.update(user);
        return "redirect:/afterLogin";
    }
    @GetMapping("adminLogin/deleteuser/{id}")
    public String deleteUser(@PathVariable int id) {
        dao.deleteUser(id);
        return "redirect:/adminLogin/viewusers";
    }



}
