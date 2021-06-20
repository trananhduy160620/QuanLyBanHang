/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.database;

import com.models.SanPham;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Administrator
 */
@Repository
public class SanPhamDAOImpl implements SanPhamDAO {

    NamedParameterJdbcTemplate namedParameterJdbcTemplate;
    
    @Autowired
    public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate) throws DataAccessException {
        this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
    }
    @Override
    public List<SanPham> listAllProduct() {
        String sql = "SELECT * FROM `sanpham`";
        List<SanPham> list = namedParameterJdbcTemplate.query(sql, getSqlParameterByModel(null), new SanPhamMapper());
       return list;
    }

    private SqlParameterSource getSqlParameterByModel(SanPham sp) {
        MapSqlParameterSource paramSource = new MapSqlParameterSource();
        if(sp != null) {
            paramSource.addValue("MaSanPham", sp.getMaSanPham());
            paramSource.addValue("TenSanPham", sp.getTenSanPham());
            paramSource.addValue("QuyCach", sp.getQuycach());
            paramSource.addValue("GiaGoc", sp.getGiaSanPham());
            
        }
        return paramSource;
    }
    private static final class SanPhamMapper implements RowMapper<SanPham> {
        @Override
        public SanPham mapRow(ResultSet rs, int rowNum) throws SQLException{
            String maSp = rs.getString(1);
            String tenSp = rs.getString(2);
            int quycach = rs.getInt(3);
            int giagoc = rs.getInt(4);
            return new SanPham(maSp, tenSp, quycach, giagoc);
        }
    }
    @Override
    public void addProduct(SanPham sp) {
       
    }

    @Override
    public void updateProduct(SanPham sp) {
         
    }

    @Override
    public void deleteProduct(String id) {
        
    }

    @Override
    public SanPham findProductById(String id) {
        return null;
    }
    
}
