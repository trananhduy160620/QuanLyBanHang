/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.dao;
import java.util.List;
import java.sql.SQLException;
import java.sql.ResultSet;

import teamwork.com.models.KhachHang;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
/**
 *
 * @author Administrator
 */
public class KhachHangDAO {
    private JdbcTemplate jdbcTemplate;
    public void setTemplate(JdbcTemplate jdbcTemplate) {    
        this.jdbcTemplate = jdbcTemplate;    
    }  
    
    public int addUser(KhachHang kh){    
        String sql = "INSERT INTO `khachhang`(`MaKhachhang`, `TenKhachhang`, `DiaChi`, `SDT`, `SoDu`, `CongNo`) VALUES (?, ?, ?, ?, ?, ?)";    
        try {
            int counter = jdbcTemplate.update(sql, new Object[] { kh.getMaKhachHang(), kh.getTenKhachHang(), kh.getDiachi(), kh.getSdt(), kh.getSodu(), kh.getCongno() });
            return counter;
	} catch (Exception e){
            e.printStackTrace();
            return 0;
	} 
    } 
    public int updateUser(KhachHang kh) {
	String sql = "UPDATE `khachhang` SET `TenKhachhang` = ?, `DiaChi` = ?, `SDT` = ?, `SoDu` = ?, `CongNo` = ? WHERE `MaKhachhang` = ?";

	try {
            int counter = jdbcTemplate.update(sql, new Object[] { kh.getTenKhachHang(), kh.getDiachi(), kh.getSdt(), kh.getSodu(), kh.getCongno(), kh.getMaKhachHang() });

            return counter;

	} catch (Exception e) {
            e.printStackTrace();
            return 0;
	}
    }
    public int updateSoDuKH(int sotien, String makh) {
        String sql = "UPDATE `khachhang` SET `SoDu`=? WHERE khachhang.MaKhachhang = ?";

	try {
            int counter = jdbcTemplate.update(sql, new Object[] { sotien, makh });
            return counter;

	} catch (Exception e) {
            e.printStackTrace();
            return 0;
	}
    }
    public int updateCongNoKH(int sotienno, String makh) {
        String sql = "UPDATE `khachhang` SET `CongNo`=? WHERE khachhang.MaKhachhang = ?";

	try {
            int counter = jdbcTemplate.update(sql, new Object[] { sotienno, makh });
            return counter;

	} catch (Exception e) {
            e.printStackTrace();
            return 0;
	}
    }
    public int deleteUser(String makh) {
	String sql = "DELETE FROM `khachhang` WHERE MaKhachhang = ?";

	try {

            int counter = jdbcTemplate.update(sql, new Object[] { makh });
            return counter;

	} catch (Exception e) {
            e.printStackTrace();
            return 0;
	}
    }
    public List<KhachHang> findSoDuById(String makh) {

	List<KhachHang> userList = jdbcTemplate.query("SELECT * FROM `khachhang` WHERE MaKhachhang = ?", new Object[] { makh }, new RowMapper<KhachHang>() {
            
            public KhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
		KhachHang kh = new KhachHang();

		kh.setMaKhachHang(rs.getString(1));
		kh.setTenKhachHang(rs.getString(2));
		kh.setDiachi(rs.getString(3));
		kh.setSdt(rs.getString(4));
                kh.setSodu(rs.getInt(5));
		kh.setCongno(rs.getInt(6));

		return kh;
            }
	});
	return userList;
    }
    public List<KhachHang> findUserById(String makh) {

	List<KhachHang> userList = jdbcTemplate.query("SELECT * FROM `khachhang` WHERE MaKhachhang = ?", new Object[] { makh }, new RowMapper<KhachHang>() {
            
            public KhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
		KhachHang kh = new KhachHang();

		kh.setMaKhachHang(rs.getString(1));
		kh.setTenKhachHang(rs.getString(2));
		kh.setDiachi(rs.getString(3));
		kh.setSdt(rs.getString(4));
                kh.setSodu(rs.getInt(5));
		kh.setCongno(rs.getInt(6));

		return kh;
            }
	});
	return userList;
    }
    public List<KhachHang> listAllUser() {
        return jdbcTemplate.query("select * from `khachhang`", new RowMapper<KhachHang>() {
            public KhachHang mapRow(ResultSet rs, int row) throws SQLException {
                String maKh = rs.getString(1);
                String tenKh = rs.getString(2);
                String diachi = rs.getString(3);
                String sdt = rs.getString(4);
                int sodu = rs.getInt(5);
                int congno = rs.getInt(6);
                return new KhachHang(maKh, tenKh, diachi, sdt, sodu, congno);
            }
        });
    }
}
