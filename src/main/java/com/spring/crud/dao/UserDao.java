package com.spring.crud.dao;

import com.spring.crud.beans.User;
import lombok.Getter;
import lombok.Setter;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Getter
@Setter
@Repository("userDAO")
public class UserDao {

    @Autowired
    private SqlSessionTemplate session;

    public User selectById(int id) {
        User user = session.selectOne("userDB.selectUserById",id);
        return user;
    }
    public List<User> selectAll() {
        List<User> list = session.selectList("userDB.selectUserAll");
        return list;
    }
    public void insert(User user) {
        session.insert("userDB.insertUser",user);
    }
    public void update(User user) {
        session.update("userDB.updateUser",user);
    }
    public void deleteUser(int id) {
        session.delete("userDB.deleteUser",id);
    }


//    JdbcTemplate template;
//
//    public int save(User u) {
//        String sql="insert into users(name,phone_num,username,password,email) values('" + u.getName()+"','"
//                + u.getPhone_num()+"','" + u.getUsername() + "','"+u.getPassword() +"', '"+u.getEmail()+"')";
//        return template.update(sql);
//    }
//    public int update(User u) {
//        String sql="update users set name= '" +u.getName() + "',phone_num= '"+u.getPhone_num()+"', username= '"+u.getUsername()+"',password = '"
//                +u.getPassword()+"',email= '"+u.getEmail() + "' where id=" + u.getId()+"";
//        return template.update(sql);
//    }
//    public int delete(int id) {
//        String sql="delete from users where id="+id+"";
//        return template.update(sql);
//    }
//    public User getUserById(int id) {
//        String sql="select * from users where id=?";
//        return template.queryForObject(sql, new Object[]{id},new BeanPropertyRowMapper<User>(User.class));
//    }
//    public List<User> getUsers() {
//        return template.query("select * from users", new RowMapper<User>() {
//            @Override
//            public User mapRow(ResultSet resultSet, int i) throws SQLException {
//                User u = new User();
//                u.setId(resultSet.getInt(1));
//                u.setName(resultSet.getString(2));
//                u.setPhone_num(resultSet.getString(3));
//                u.setUsername(resultSet.getString(4));
//                u.setPassword(resultSet.getString(5));
//                u.setEmail(resultSet.getString(6));
//                return u;
//            }
//        });
//    }
}
