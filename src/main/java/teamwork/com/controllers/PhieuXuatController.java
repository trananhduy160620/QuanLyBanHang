/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.controllers;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import teamwork.com.dao.KhachHangDAO;
import teamwork.com.models.KhachHang;
import teamwork.com.dao.HoaDonDAO;
import teamwork.com.models.HoaDon;
import teamwork.com.dao.PhieuXuatDAO;
import teamwork.com.models.PhieuXuat;
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
public class PhieuXuatController {
    
    @Autowired
    KhachHangDAO daoKH;
    
    @Autowired
    HoaDonDAO daoHD;
    
    @Autowired
    PhieuXuatDAO daoPX;
    
    @RequestMapping(value = "/viewphieuxuat")
    public String showFormAddPhieuXuat(Model m) {
        List<PhieuXuat> listPX = daoPX.getAllPhieuXuat();
        m.addAttribute("listPX", listPX);
        return "phieuxuat/viewphieuxuat";
    }
    
    @RequestMapping(value = "/addpx")
    public String showFormAddPhieuXuat(Model m1, Model m2) {
        List<String> listMaHD = daoHD.getAllMaHoaDon();
        List<KhachHang> listUser = daoKH.listAllUser();
        m1.addAttribute("listMaHD", listMaHD);
        m2.addAttribute("listUser", listUser);
        return "phieuxuat/addpx";
    }
    @RequestMapping(value = "/addpx", method = RequestMethod.POST)
    public ModelAndView addPhieuXuat(@RequestParam("mapx") String mapx,
            @RequestParam("makh") String makh,
            @RequestParam("mahd") String mahd,
            @RequestParam("ngayxuat") String ngayxuat,
            ModelAndView mv) {
        
        List<KhachHang> list = daoKH.findSoDuById(makh);
        List<String> list2 = daoHD.getTongTienByIdHoaDon(mahd);
        int tong_tien_tren_hoa_don = Integer.valueOf(list2.get(0));
        int so_du = list.get(0).getSodu();
        if(so_du > tong_tien_tren_hoa_don) {
            int so_tien_du_moi = so_du - tong_tien_tren_hoa_don;
            int couter = daoKH.updateSoDuKH(so_tien_du_moi, makh);
        } else if (so_du < tong_tien_tren_hoa_don) {
            int cong_no = tong_tien_tren_hoa_don - so_du;
            int counter1 = daoKH.updateSoDuKH(0, makh);
            int counter2 = daoKH.updateCongNoKH(cong_no, makh);
        }
        PhieuXuat px = new PhieuXuat(mapx, makh, mahd, ngayxuat, tong_tien_tren_hoa_don);
        int counter = daoPX.addPhieuXuat(px);
        if (counter > 0) {
            mv.addObject("msg", "Phieu Xuat add successful.");
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewphieuxuat");
        return mv;
    }
}
