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
