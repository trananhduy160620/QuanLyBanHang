/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.dao;

import java.util.List;
import java.sql.SQLException;
import java.sql.ResultSet;

import teamwork.com.models.PhieuThu;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
public class PhieuThuDAO {
    private JdbcTemplate jdbcTemplate;
    public void setTemplate(JdbcTemplate jdbcTemplate) {    
        this.jdbcTemplate = jdbcTemplate;    
    }  
    public int addPhieuThu(PhieuThu pt){    
        String sql = "INSERT INTO `phieuthu`(`MaPhieuThu`, `MaKhachHang`, `SoTienThu`, `NgayThu`) VALUES (?, ?, ?, ?)";    
        try {
            int counter = jdbcTemplate.update(sql, new Object[] { pt.getMaPhieuThu(), pt.getMaKhachHang(), pt.getSoTienThu(), pt.getNgayThu()});
            return counter;
	} catch (Exception e){
            e.printStackTrace();
            return 0;
	} 
    }
    public List<PhieuThu> listAllPhieuThu() {
        return jdbcTemplate.query("select * from `phieuthu`", new RowMapper<PhieuThu>() {
            public PhieuThu mapRow(ResultSet rs, int row) throws SQLException {
                String maPt = rs.getString(1);
                String maKh = rs.getString(2);
                int soTienThu = rs.getInt(3);
                String ngayThu = rs.getString(4);
                return new PhieuThu(maPt, maKh, soTienThu, ngayThu);
            }
        });
    }
    
    public List<PhieuThu> listAllTest() {
        return jdbcTemplate.query("SELECT pt.MaPhieuThu, pt.MaKhachHang, kh.TenKhachHang, pt.SoTienThu, pt.NgayThu FROM phieuthu pt join khachhang kh on pt.MaKhachHang = kh.MaKhachhang", new RowMapper<PhieuThu>() {
            public PhieuThu mapRow(ResultSet rs, int row) throws SQLException {
                String maPt = rs.getString(1);
                String maKh = rs.getString(2);
                String tenKh = rs.getString(3);
                int soTienThu = rs.getInt(4);
                String ngayThu = rs.getString(5);
                return new PhieuThu(maPt, maKh, tenKh,soTienThu, ngayThu);
            }
        });
    }
    
}
