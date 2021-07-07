/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.dao;

import java.util.List;
import java.sql.SQLException;
import java.sql.ResultSet;
import teamwork.com.models.HoaDon;
import teamwork.com.models.PhieuXuat;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
public class PhieuXuatDAO {
    
    private JdbcTemplate jdbcTemplate;
    public void setTemplate(JdbcTemplate jdbcTemplate) {    
        this.jdbcTemplate = jdbcTemplate;    
    }
    
    
    public int addPhieuXuat(PhieuXuat px){    
        String sql = "INSERT INTO `phieuxuat`(`MaPhieuXuat`, `MaKhachHang`, `MaHoaDon`, `NgayXuat`, `TongTien`) VALUES (?, ?, ?, ?, ?)";    
        try {
            int counter = jdbcTemplate.update(sql, new Object[] { px.getMaPhieuXuat(), px.getMaKhachHang() , px.getMaHoaDon() , px.getNgayXuat(), px.getTongTien() });
            return counter;
	} catch (Exception e){
            e.printStackTrace();
            return 0;
	} 
    }
    public List<PhieuXuat> getAllPhieuXuat() {
        return jdbcTemplate.query("select * from `phieuxuat`", new RowMapper<PhieuXuat>() {
            public PhieuXuat mapRow(ResultSet rs, int row) throws SQLException {
                String maPX = rs.getString(1);
                String maKH = rs.getString(2);
                String maHD = rs.getString(3);
                String ngayxuat = rs.getString(4);
                int tongtien = rs.getInt(5);
                return new PhieuXuat(maPX, maKH, maHD, ngayxuat, tongtien);
            }
        });
    }
}
