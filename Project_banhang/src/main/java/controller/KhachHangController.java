/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.KhachHangDao;
import java.util.List;
import model.KhachHang;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 *
 * @author ADMIN
 */
@Controller
public class KhachHangController {
    private static final Logger logger = Logger.getLogger(KhachHangController.class);
    
    @Autowired
    KhachHangDao dao;
    @RequestMapping(value = "/khachhang/list",method = RequestMethod.GET)
    public ModelAndView LayDanhSach(){
        logger.info("Xu ly lay danh sach khach hang");
        List<KhachHang> lst = dao.LayDanhSachKhachHang();
        return new ModelAndView("listKhachHang", "list",lst);
    }
}
