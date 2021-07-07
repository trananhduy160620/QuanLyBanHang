/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.dao;

import java.util.List;
import java.sql.SQLException;
import java.sql.ResultSet;

import teamwork.com.models.LichBanHang;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
public class LichBanHangDAO {
    
    private JdbcTemplate jdbcTemplate;
    public void setTemplate(JdbcTemplate jdbcTemplate) {    
        this.jdbcTemplate = jdbcTemplate;    
    }  
    
    public List<LichBanHang> getAllInfoBanHang() {
        String sql = "SELECT kh.MaKhachhang, kh.TenKhachhang, px.NgayXuat, px.TongTien FROM phieuxuat px join khachhang kh on px.MaKhachHang = kh.MaKhachhang";
        return jdbcTemplate.query(sql, new RowMapper<LichBanHang>() {
            public LichBanHang mapRow(ResultSet rs, int row) throws SQLException {
                String maKh = rs.getString(1);
                String tenKh = rs.getString(2);
                String ngayThang = rs.getString(3);
                int tongTien = rs.getInt(4);
                return new LichBanHang(maKh, tenKh, ngayThang, tongTien);
            }
        });
    }
}
