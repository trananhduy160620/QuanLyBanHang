/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.controllers;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import teamwork.com.dao.LichBanHangDAO;
import teamwork.com.models.LichBanHang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PathVariable;
import java.io.IOException;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletRequest;
@Controller
public class LichBanHangController {
    
    @Autowired
    LichBanHangDAO daoLBH;
    
    @RequestMapping(value = "/viewlichbanhang")
    public String viewLichBanHang(Model m) {
        List<LichBanHang> listLichBanHang = daoLBH.getAllInfoBanHang();
        m.addAttribute("listLichBanHang", listLichBanHang);
        return "lichbanhang/viewlichbanhang";
    }
}
