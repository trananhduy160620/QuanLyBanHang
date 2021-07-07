/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.controllers;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.Map;
import java.util.List;
import java.util.ArrayList;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import teamwork.com.dao.SanPhamDAO;
import teamwork.com.models.SanPham;
import teamwork.com.dao.HoaDonDAO;
import teamwork.com.models.HoaDon;
import teamwork.com.models.SmallBill;
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
public class HoaDonController {
    @Autowired
    SanPhamDAO dao;
    
    @Autowired
    HoaDonDAO daoHD;

    @RequestMapping(value = "/viewhoadon")
    public String showListHoaDon(Model m) {
        List<HoaDon> list = daoHD.listAllHoaDon();
        m.addAttribute("list", list);
        return "hoadon/viewhoadon";
    }
    
    
    @RequestMapping(value = "/addhd")
    public String showFormHoaDon(Model m) {
        List<SanPham> list = dao.listAllProduct();
        m.addAttribute("list", list);
        
        return "hoadon/addhd";
    }
    @RequestMapping(value = "/addhd", method=RequestMethod.POST)
    public String addHoaDon(
            @RequestParam(value="mahd", required=false) String mahd,
            @RequestParam(value="giasp", required=false) List<String> arrGiasp, 
            @RequestParam(value="masp", required=false) List<String> arrMasp, 
            @RequestParam(value="soluong", required=false) List<String> arrSoLuong, 
            Model m) {
        
        List<HoaDon> listHD = new ArrayList<HoaDon>();
        for(int i = 0; i < arrSoLuong.size();i++) {
            if(arrSoLuong.get(i) != "") {
                HoaDon hd = new HoaDon();
                hd.setMaHoaDon(mahd);
                hd.setSoLuong(Integer.valueOf(arrSoLuong.get(i)));
                hd.setGiaBan(Integer.valueOf(arrGiasp.get(i)));
                hd.setKhuyenMai(0);
                listHD.add(hd);
            }
        }
        for(int i = 0;i <listHD.size(); i++) {
            listHD.get(i).setMaSanPham(arrMasp.get(i));
            int counter = daoHD.addHoaDon(listHD.get(i));
            if (counter > 0) {
                m.addAttribute("msg", "Hoa Don " + i + " registration successful.");
            } else {
                m.addAttribute("msg", "Error- check the console log.");
            }
        }
        
        return "redirect:/viewhoadon";
    }
}
