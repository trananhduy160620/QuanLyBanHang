
package teamwork.com.controllers;

import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import teamwork.com.dao.KhachHangDAO;
import teamwork.com.models.KhachHang;
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
public class KhachHangController {
    
    @Autowired
    KhachHangDAO daoKH;

    @RequestMapping(value = "/viewuser")
    public String viewListUser(Model m) {
        List<KhachHang> listUser = daoKH.listAllUser();
        m.addAttribute("listUser", listUser);
        return "khachhang/viewuser";
    }
    
    @RequestMapping(value = "/viewuser", method = RequestMethod.POST)
    public String findProduct(HttpServletRequest request, Model m) {
        String makh = request.getParameter("makh");
        List<KhachHang> listUser = daoKH.findUserById(makh);
        m.addAttribute("listUser", listUser);
        
        return "khachhang/resultsearch";
    }

    @RequestMapping(value = "/addkh")
    public String showAddKhPage(Model m) {
        
        return "khachhang/addkh";
    }

    @RequestMapping(value = "/addkh", method = RequestMethod.POST)
    public ModelAndView addKh(@RequestParam("makh") String makh,
            @RequestParam("tenkh") String tenkh,
            @RequestParam("diachi") String diachi,
            @RequestParam("sdt") String sdt,
            @RequestParam("sodu") int sodu,
            @RequestParam("congno") int congno, 
            ModelAndView mv) {
        
        KhachHang kh = new KhachHang();
        kh.setMaKhachHang(makh);
        kh.setTenKhachHang(tenkh);
        kh.setDiachi(diachi);
        kh.setSdt(sdt);
        kh.setSodu(sodu);
        kh.setCongno(congno);
        
        int counter = daoKH.addUser(kh);
        if (counter > 0) {
            mv.addObject("msg", "User registration successful.");
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewuser");
        return mv;
    }

    @RequestMapping(value = "/updatekh/{IdKh}")
    public ModelAndView showOldUser(ModelAndView model, @PathVariable("IdKh") String makh, Model m) throws IOException {
        List<KhachHang> listUser = daoKH.findUserById(makh);
        model.addObject("listUser", listUser);
        m.addAttribute("listUser", listUser);
        model.setViewName("khachhang/updatekh");
        return model;
    }

    @RequestMapping(value = "/updatekh", method = RequestMethod.POST)
    public ModelAndView updateUser(@RequestParam("makh") String makh,
            @RequestParam("tenkh") String tenkh,
            @RequestParam("diachi") String diachi,
            @RequestParam("sdt") String sdt,
            @RequestParam("sodu") int sodu,
            @RequestParam("congno") int congno, ModelAndView mv) {

        KhachHang kh = new KhachHang();
        kh.setMaKhachHang(makh);
        kh.setTenKhachHang(tenkh);
        kh.setDiachi(diachi);
        kh.setSdt(sdt);
        kh.setSodu(sodu);
        kh.setCongno(congno);

        int counter = daoKH.updateUser(kh);
        if (counter > 0) {
            mv.addObject("msg", "User update successful.");
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewuser");
        return mv;
    }

    @RequestMapping(value = "/deletekh/{IdKh}")
    public ModelAndView deleteUserById(ModelAndView mv, @PathVariable("IdKh") String IdKh)
            throws IOException {

        int counter = daoKH.deleteUser(IdKh);
        if (counter > 0) {
            mv.addObject("msg", "User records deleted success product id: " + IdKh);
        } else {
            mv.addObject("msg", "Error- check the console log.");
        }
        mv.setViewName("redirect:/viewuser");
        return mv;
    }
}
