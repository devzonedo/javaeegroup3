/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mydemo.util;

import com.mydemo.bean.Student;

/**
 *
 * @author devzo
 */
public class Test {
 
    public static void main(String[] args) {
        Student stu = new Student();
        stu.setStuID(5);
        stu.setFname("Kumara");
        stu.setLname("Fernando");
        
        System.out.println("ID:"+stu.getStuID());
        System.out.println("First Name:"+stu.getFname());
        
    }
    
    
}
