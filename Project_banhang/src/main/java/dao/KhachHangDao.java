/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import model.KhachHang;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

/**
 *
 * @author ADMIN
 */
public class KhachHangDao {
    
    JdbcTemplate template;
    
     public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }
    
    public void ThemKhachHang(KhachHang kh) {
        String sql = String.format("insert into KhachHang (tenkh,diachi,sodienthoai,sodu,congno) values('%s','%s','%s','%d','%d')", kh.getTenkh(), kh.getDiachi(), kh.getSodienthoai(), kh.getSodu(), kh.getCongno());
        template.update(sql);
    }

    public int CapNhatKhachHang(KhachHang kh) {
        String sql = String.format("update KhachHang set tenkh='%s',diachi='%s', sodienthoai='%s', sodu='%d', congno='%d' where makh=%d",kh.getTenkh(),kh.getDiachi(),kh.getSodienthoai(),kh.getSodu(), kh.getCongno(), kh.getMakh());
        return template.update(sql);
    }

    public int XoaKhachHang(int makh) {
        String sql = "delete from KhachHang where makh = " + makh;
        return template.update(sql);
    }
    
    public KhachHang TimKiemKhachHangTheoMaKH(int makh) {
        String sql = "select * from KhachHang where makh=?";
        return template.queryForObject(sql, new Object[]{makh}, new BeanPropertyRowMapper<KhachHang>(KhachHang.class));
    }
    
     public KhachHang TimKiemKhachHangTheoTenKH(String tenkh) {
        String sql = "select * from KhachHang where tenkh=?";
        return template.queryForObject(sql, new Object[]{tenkh}, new BeanPropertyRowMapper<KhachHang>(KhachHang.class));
    }
     
    public List<KhachHang> LayDanhSachKhachHang() {
        return template.query("select * from KhachHang", new RowMapper<KhachHang>() {
            public KhachHang mapRow(ResultSet rs, int row) throws SQLException {
                KhachHang e = new KhachHang();
                e.setMakh(rs.getInt(1));
                e.setTenkh(rs.getString(2));
                e.setDiachi(rs.getString(3));
                e.setSodienthoai(rs.getString(4));
                e.setSodu(rs.getInt(5));
                e.setCongno(rs.getInt(6));
                return e;
            }
        });
    }
}
