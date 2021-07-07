/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.dao;

import java.util.List;
import java.sql.SQLException;
import java.sql.ResultSet;

import teamwork.com.models.SanPham;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
/**
 *
 * @author Administrator
 */
public class SanPhamDAO {
    
    private JdbcTemplate jdbcTemplate;
    public void setTemplate(JdbcTemplate jdbcTemplate) {    
        this.jdbcTemplate = jdbcTemplate;    
    }  
    public int addProduct(SanPham sp){    
        String sql = "INSERT INTO `sanpham`(`MaSanPham`, `TenSanPham`, `QuyCach`, `GiaGoc`) VALUES (?, ?, ?, ?)";    
        try {
            int counter = jdbcTemplate.update(sql, new Object[] { sp.getMaSanPham(), sp.getTenSanPham(), sp.getQuycach(), sp.getGiaSanPham() });
            return counter;
	} catch (Exception e){
            e.printStackTrace();
            return 0;
	} 
    } 
    public int updateProduct(SanPham sp) {
	String sql = "UPDATE `sanpham` SET `TenSanPham`=?,`QuyCach`=?,`GiaGoc`=? WHERE `MaSanPham`=?";

	try {
            int counter = jdbcTemplate.update(sql, new Object[] { sp.getTenSanPham(), sp.getQuycach(), sp.getGiaSanPham(), sp.getMaSanPham() });

            return counter;

	} catch (Exception e) {
            e.printStackTrace();
            return 0;
	}
    }
    public int deleteProduct(String masp) {
	String sql = "DELETE FROM `sanpham` WHERE MaSanPham = ?";

	try {

            int counter = jdbcTemplate.update(sql, new Object[] { masp });
            return counter;

	} catch (Exception e) {
            e.printStackTrace();
            return 0;
	}
    }
    public List<SanPham> findProductById(String masp) {

	List<SanPham> producList = jdbcTemplate.query("SELECT * FROM `sanpham` WHERE MaSanPham = ?", new Object[] { masp }, new RowMapper<SanPham>() {
            
            public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
		SanPham sp = new SanPham();

		sp.setMaSanPham(rs.getString(1));
		sp.setTenSanPham(rs.getString(2));
		sp.setQuycach(rs.getInt(3));
		sp.setGiaSanPham(rs.getInt(4));

		return sp;
            }

	});
	return producList;
    }
    public List<SanPham> listAllProduct() {
        return jdbcTemplate.query("select * from `sanpham`", new RowMapper<SanPham>() {
            public SanPham mapRow(ResultSet rs, int row) throws SQLException {
                String maSp = rs.getString(1);
                String tenSp = rs.getString(2);
                int quycach = rs.getInt(3);
                int giagoc = rs.getInt(4);
                return new SanPham(maSp, tenSp, quycach, giagoc);
            }
        });
    }
    
}
