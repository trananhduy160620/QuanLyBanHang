/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controllers;


import org.springframework.stereotype.Controller;  
import org.springframework.web.bind.annotation.RequestMapping; 
/**
 *
 * @author Administrator
 */
@Controller  
public class HelloController1 {
    
    
    
    @RequestMapping("/hello1")  
    public String display()  
    {  
        return "viewpage1";  
    }    
}
