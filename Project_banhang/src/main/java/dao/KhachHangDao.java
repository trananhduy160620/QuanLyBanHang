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
    
    public List<KhachHang> LayDanhSachKhachHang() {
        return template.query("select * from KhachHang", new RowMapper<KhachHang>() {
            public KhachHang mapRow(ResultSet rs, int row) throws SQLException {
                KhachHang e = new KhachHang();
                e.setMakh(rs.getString(1));
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
