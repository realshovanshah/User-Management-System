/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.datapirates.ums.dao;

import com.datapirates.ums.model.User;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Shah Jr
 */
public class UserDaoTest {
    
    public UserDaoTest() {
    }

    @org.junit.Before
    public void setUp() throws Exception {
    }

    /**
     * Test of validateUser method, of class UserDao.
     */
    @org.junit.Test
    public void testValidateUser1() {
        System.out.println("Validate User");
        String email = "admin@gmail.com";
        String password = "admin123";
        
        User user = UserDao.validateUser(email, password);
        String expResult = "admin@gmail.com";
        String result = user.getEmail();
        
        assertEquals(expResult, result);
    }
    
    @org.junit.Test
    public void testValidateUser2() {
        System.out.println("Validate User with incorrect email");
        String email = "admin12@gmail.com";
        String password = "haha";
        User expResult = null;
        User result = UserDao.validateUser(email, password);
        assertEquals(expResult, result);
//        fail("The test case is a prototype.");
    }
    
    @org.junit.Test
    public void testValidateUser3() {
        System.out.println("Validate with blocked user");
        String email = "haha@gmail.com";
        String password = "haha";
        User expResult = null;
        User result = UserDao.validateUser(email, password);
        assertEquals(expResult, result);
//        fail("The test case is a prototype.");
    }
    
    @org.junit.Test
    public void testValidateUser4() {
        System.out.println("Validate User with empty fields");
        String email = "admin@gmail.com";
        String password = "";
        User expResult = null;
        User result = UserDao.validateUser(email, password);
        assertEquals(expResult, result);
//        fail("The test case is a prototype.");
    }
    
    @org.junit.Test
    public void testValidateUser5() {
        System.out.println("Validate User with incorrect password");
        String email = "haha@gmail.com";
        String password = "253";
        User expResult = null;
        User result = UserDao.validateUser(email, password);
        assertEquals(expResult, result);
//        fail("The test case is a prototype.");
    }
    
        /**
     * Test of updateUser method, of class UserDao.
     */
    @org.junit.Test
    public void updateUser1() throws Exception {
        System.out.println("Update User");
        User user = new User();
        user.setFname("test");
        user.setLname("test");            
        user.setEmail("test1@gmail.com");
        user.setPassword("test123");
        user.setAge("18");
        user.setGender("Male");
        user.setIs_admin(1);
        user.setId(21);
        
        UserDao.updateUser(user);
        
        String expResult = "test1@gmail.com";
        String result = user.getEmail();
        
        assertEquals(expResult, result);
    }
    @org.junit.Test
    public void updateUser2() throws Exception {
        System.out.println("Update User with empty email");
        User user = new User();
        user.setFname("test");
        user.setLname("test");            
        user.setEmail("");
        user.setPassword("test123");
        user.setAge("18");
        user.setGender("Male");
        user.setIs_admin(1);
        user.setId(21);
        
        UserDao.updateUser(user);
        
        String expResult = "";
        String result = user.getEmail();
        
        assertEquals(expResult, result);
    }
    @org.junit.Test
    public void updateUser3() throws Exception {
        System.out.println("Update User with existing email");
        User user = new User();
        user.setFname("test");
        user.setLname("test");            
        user.setEmail("haha@gmail.com");
        user.setPassword("test123");
        user.setAge("18");
        user.setGender("Male");
        user.setIs_admin(1);
        user.setId(21);
        
        UserDao.updateUser(user);
        
        String expResult = "haha@gmail.com";
        String result = user.getEmail();
        
        assertEquals(expResult, result);
    }
    @org.junit.Test
    public void updateUser4() throws Exception {
        System.out.println("Update User with no id");
        User user = new User();
        user.setFname("test");
        user.setLname("test");            
        user.setEmail("test@gmail.com");
        user.setPassword("test123");
        user.setAge("18");
        user.setGender("Male");
        user.setIs_admin(1);
        UserDao.updateUser(user);
         
        int expResult = 0;
        int result = user.getId();
        
        assertEquals(expResult, result);
    }
    @org.junit.Test
    public void updateUser5() throws Exception {
        System.out.println("Update User with existing id");
        User user = new User();
        user.setFname("test");
        user.setLname("test");            
        user.setEmail("test@gmail.com");
        user.setPassword("test123");
        user.setAge("18");
        user.setGender("Male");
        user.setIs_admin(1);
        user.setId(20);
        
        UserDao.updateUser(user);
        
        int expResult = 20;
        int result = user.getId();
        
        assertEquals(expResult, result);
    }


    /**
     * Test of delete method, of class UserDao.
     */
    @org.junit.Test
    public void testDelete() throws Exception {
        System.out.println("delete");
        int id = 22;
        UserDao instance = new UserDao();
        instance.delete(id);
        User user = instance.userDetails(id);
        
        if(user ==null ){
            assertTrue(true);
        }else{
            assertTrue(false);
        }
    }

    /**
     * Test of blockUser method, of class UserDao.
     */
    @org.junit.Test
    public void testBlockUser() throws Exception {
        System.out.println("blockUser");
        int id = 21;
        UserDao instance = new UserDao();
        instance.blockUser(id);
        User user = instance.userDetails(id);
        
        if(user.getIs_blocked()==1 ){
            assertTrue(true);
        }else{
            assertTrue(false);
        }
    }

    /**
     * Test of unblockUser method, of class UserDao.
     */
    @org.junit.Test
    public void testUnblockUser() throws Exception {
        System.out.println("unblockUser");
        int id = 21;
        UserDao instance = new UserDao();
        instance.unblockUser(id);
        User user = instance.userDetails(id);
        
        if(user.getIs_blocked()==0 ){
            assertTrue(true);
        }else{
            assertTrue(false);
        }
    }

    
}
