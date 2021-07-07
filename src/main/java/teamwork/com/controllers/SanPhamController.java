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
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.bind.annotation.PathVariable;
import java.io.IOException;
import org.springframework.ui.Model;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;

/**
 *
 * @author Administrator
 */
@Controller
public class SanPhamController {

    @Autowired
    SanPhamDAO dao;

    @RequestMapping(value = "/viewproduct")
    public String viewlist(Model m) {
        List<SanPham> list = dao.listAllProduct();
        m.addAttribute("list", list);
        
        return "sanpham/viewproduct";
    }
    
    @RequestMapping(value = "/viewproduct", method = RequestMethod.POST)
    public String findProductById(HttpServletRequest request, Model m) {
        String masp = request.getParameter("masp");
        List<SanPham> listProduct = dao.findProductById(masp);
        m.addAttribute("listProduct", listProduct);
        
        return "sanpham/resultsearch";
    }

    @RequestMapping(value = "/addsp")
    public String showAddSpPage(Model m) {
        return "sanpham/addsp";
    }

    @RequestMapping(value = "/addsp", method = RequestMethod.POST)
    public ModelAndView addSp(@RequestParam("masp") String masp,
            @RequestParam("tensp") String tensp,
            @RequestParam("quycach") int quycach,
            @RequestParam("giasp") int giasp, ModelAndView mv) {
        SanPham sp = new SanPham();
        sp.setMaSanPham(masp);
        sp.setTenSanPham(tensp);
        sp.setQuycach(quycach);
        sp.setGiaSanPham(giasp);

        int counter = dao.addProduct(sp);
        if (counter > 0) {
            mv.addObject("msg", "Product registration successful.");
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewproduct");
        return mv;
    }

    @RequestMapping(value = "/updatesp/{IdSp}")
    public ModelAndView showOldProduct(ModelAndView model, @PathVariable("IdSp") String masp, Model m) throws IOException {
        List<SanPham> listProduct = dao.findProductById(masp);
        model.addObject("listProduct", listProduct);
        m.addAttribute("listProduct", listProduct);
        model.setViewName("sanpham/updatesp");
        return model;
    }

    @RequestMapping(value = "/updatesp", method = RequestMethod.POST)
    public ModelAndView updateProduct(@RequestParam("masp") String masp,
            @RequestParam("tensp") String tensp,
            @RequestParam("quycach") int quycach,
            @RequestParam("giasp") int giasp, ModelAndView mv) {

        SanPham sp = new SanPham();
        sp.setMaSanPham(masp);
        sp.setTenSanPham(tensp);
        sp.setQuycach(quycach);
        sp.setGiaSanPham(giasp);

        int counter = dao.updateProduct(sp);
        if (counter > 0) {
            mv.addObject("msg", "Product update successful.");
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewproduct");
        return mv;
    }

    @RequestMapping(value = "/deletesp/{IdSp}")
    public ModelAndView deleteProductById(ModelAndView mv, @PathVariable("IdSp") String IdSp)
            throws IOException {

        int counter = dao.deleteProduct(IdSp);
        if (counter > 0) {
            mv.addObject("msg", "Product records deleted against product id: " + IdSp);
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewproduct");
        return mv;
    }
}
