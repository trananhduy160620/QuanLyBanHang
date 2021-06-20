/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.database;

import teamwork.com.models.SanPham;

import java.sql.ResultSet;    
import java.sql.SQLException;  
import org.springframework.jdbc.core.BeanPropertyRowMapper;    
import org.springframework.jdbc.core.JdbcTemplate;    
import org.springframework.jdbc.core.RowMapper; 
import java.util.List;


public interface SanPhamDAO {
    public List<SanPham> listAllProduct();
    public void addProduct(SanPham sp);
    public void updateProduct(SanPham sp);
    public void deleteProduct(String id);
    public SanPham findProductById(String id);
}
