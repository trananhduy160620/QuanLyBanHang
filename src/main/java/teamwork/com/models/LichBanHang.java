/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.models;

/**
 *
 * @author Administrator
 */
public class LichBanHang {
    private String maKhachHang;
    private String tenKhachHang;
    private String ngayThang;
    private int tongTien;

    public LichBanHang(String maKhachHang, String tenKhachHanf, String ngayThang, int tongTien) {
        this.maKhachHang = maKhachHang;
        this.tenKhachHang = tenKhachHanf;
        this.ngayThang = ngayThang;
        this.tongTien = tongTien;
    }

    public LichBanHang() {
        this.maKhachHang = "";
        this.tenKhachHang = "";
        this.ngayThang = "";
        this.tongTien = 0;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getTenKhachHang() {
        return tenKhachHang;
    }

    public void setTenKhachHang(String tenKhachHanf) {
        this.tenKhachHang = tenKhachHanf;
    }

    public String getNgayThang() {
        return ngayThang;
    }

    public void setNgayThang(String ngayThang) {
        this.ngayThang = ngayThang;
    }

    public int getTongTien() {
        return tongTien;
    }

    public void setTongTien(int tongTien) {
        this.tongTien = tongTien;
    }
    
    
    
    
}
