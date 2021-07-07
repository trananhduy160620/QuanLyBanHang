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
import teamwork.com.dao.KhachHangDAO;
import teamwork.com.dao.PhieuThuDAO;
import teamwork.com.models.PhieuThu;
import teamwork.com.models.KhachHang;
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

@Controller
public class PhieuThuController {
    @Autowired
    KhachHangDAO daoKH;
    
    @Autowired
    PhieuThuDAO daoPT;
    
    @RequestMapping(value = "/viewphieuthu")
    public String viewListPT(Model m) {
        
        List<PhieuThu> listPT = daoPT.listAllTest();
        m.addAttribute("listPT", listPT);
        return "phieuthu/viewphieuthu";
    }
    
    @RequestMapping(value = "/addpt")
    public String showAddPTPage(Model m) {
        List<KhachHang> listUser = daoKH.listAllUser();
        m.addAttribute("listUser", listUser);
        return "phieuthu/addpt";
    }
    
    @RequestMapping(value = "/addpt", method = RequestMethod.POST)
    public ModelAndView addPT(@RequestParam("mapt") String mapt,
            @RequestParam("makh") String makh,
            @RequestParam("sotienthu") int sotienthu,
            @RequestParam("ngaythu") String ngaythu,
            ModelAndView mv) {
        
        List<KhachHang> list = daoKH.findSoDuById(makh);
        int soducu = list.get(0).getSodu();
        int sodumoi = soducu + sotienthu;
        PhieuThu pt = new PhieuThu(mapt, makh, sotienthu, ngaythu);
        int counter1 = daoPT.addPhieuThu(pt);
        int counter2 = daoKH.updateSoDuKH(sodumoi, makh);
        if (counter1 > 0 && counter2 > 0) {
            mv.addObject("msg", "Phieu Thu update successful.");
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewphieuthu");
        return mv;
    }
    
}
