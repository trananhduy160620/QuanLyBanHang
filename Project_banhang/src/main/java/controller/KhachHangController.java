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
import org.springframework.web.bind.annotation.RequestParam;
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
    
    @RequestMapping(value = "/khachhang",method = RequestMethod.GET)
    public ModelAndView QuanLyKhachHang(){
        return new ModelAndView("manageKhachHang");
    }
    
    @RequestMapping(value = "/khachhang/list",method = RequestMethod.GET)
    public ModelAndView LayDanhSach(){
        logger.info("Xu ly lay danh sach khach hang");
        List<KhachHang> lst = dao.LayDanhSachKhachHang();
        return new ModelAndView("listKhachHang", "list",lst);
    }
    
    @RequestMapping(value = "/khachhang/add")
    public ModelAndView Them_ui(){
        logger.info("Hien thi giao dien them khach hang moi");
        return new ModelAndView("addKhachHang");
        
    }
    
    @RequestMapping(value = "/khachhang/save",method = RequestMethod.POST)
    public String Them(KhachHang kh){
        if(kh.getMakh()==0){
            logger.info("Them khach hang moi");
            dao.ThemKhachHang(kh);
        }
        else{
            dao.CapNhatKhachHang(kh);
            logger.info("Cap nhat khach hang");
        }
        return "redirect:/khachhang/list.html";
    }
    
    @RequestMapping(value = "/khachhang/search")
    public ModelAndView TimKiem(@RequestParam("tenkh") String tenkh){
        KhachHang kh = dao.TimKiemKhachHangTheoTenKH(tenkh);
        return new ModelAndView("infoKhachHang","kh",kh);
    }
    
    @RequestMapping(value = "/khachhang/edit")
    public ModelAndView CapNhat_ui(@RequestParam("makh") int makh){
        KhachHang kh = dao.TimKiemKhachHangTheoMaKH(makh);
        return new ModelAndView("editKhachHang","kh",kh);
    }
    
    @RequestMapping(value = "/khachhang/delete")
    public String Xoa(@RequestParam("makh") int makh){
        dao.XoaKhachHang(makh);
        return "redirect:/khachhang/list.html";
    }
}
