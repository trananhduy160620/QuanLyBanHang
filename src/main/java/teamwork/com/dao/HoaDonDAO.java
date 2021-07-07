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
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
public class HoaDonDAO {
    private JdbcTemplate jdbcTemplate;
    public void setTemplate(JdbcTemplate jdbcTemplate) {    
        this.jdbcTemplate = jdbcTemplate;    
    }
    
    public int addHoaDon(HoaDon hd){    
        String sql = "INSERT INTO `hoadon`(`MaHoaDon`, `MaSanPham`, `SoLuongBan`, `DonGiaBan`, `KhuyenMai`) VALUES (?, ?, ?, ?, ?)";    
        try {
            int counter = jdbcTemplate.update(sql, new Object[] { hd.getMaHoaDon(), hd.getMaSanPham(), hd.getSoLuong(), hd.getGiaBan(), hd.getKhuyenMai() });
            return counter;
	} catch (Exception e){
            e.printStackTrace();
            return 0;
	} 
    }
    public List<String> getTongTienByIdHoaDon(String mahd) {
        String sql = "SELECT sum(hd.SoLuongBan * hd.DonGiaBan * 1000) as TongTien FROM `hoadon` hd where hd.MaHoaDon = ?";
        return jdbcTemplate.query(sql, new Object[] { mahd }, new RowMapper<String>() {
            public String mapRow(ResultSet rs, int row) throws SQLException {
                String maHd = rs.getString(1);
                return maHd;
            }
        });
    }
    public List<HoaDon> listAllHoaDon() {
        return jdbcTemplate.query("select * from `hoadon`", new RowMapper<HoaDon>() {
            public HoaDon mapRow(ResultSet rs, int row) throws SQLException {
                String maHd = rs.getString(1);
                String maSp = rs.getString(2);
                int soluong = rs.getInt(3);
                int giaban = rs.getInt(4);
                float khuyenmai = rs.getFloat(5);
                return new HoaDon(maHd, maSp, soluong, giaban, khuyenmai);
            }
        });
    }
    
    public List<String> getAllMaHoaDon() {
        return jdbcTemplate.query("select distinct hd.MaHoaDon from `hoadon` hd", new RowMapper<String>() {
            public String mapRow(ResultSet rs, int row) throws SQLException {
                String maHd = rs.getString(1);
                return maHd;
            }
        });
    }
    
    
}
