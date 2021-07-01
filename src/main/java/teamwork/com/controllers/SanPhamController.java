/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.controllers;

import java.util.List;
import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import teamwork.com.dao.SanPhamDAO;
import teamwork.com.models.SanPham;
import org.springframework.beans.factory.annotation.Autowired;  
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.ui.Model;
/**
 *
 * @author Administrator
 */
@Controller
public class SanPhamController {
    
    @Autowired
    SanPhamDAO dao;
    
    @RequestMapping("/viewproduct")  
    public String viewlist(Model m){  
        List<SanPham> list = dao.listAllProduct(); 
       
        m.addAttribute("list", list);
        
        
        return "viewproduct";  
    }
}
