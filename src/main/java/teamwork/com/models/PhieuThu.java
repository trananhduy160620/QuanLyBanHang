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
public class PhieuThu {
    private String maPhieuThu;
    private String maKhachHang;
    private String tenKhachHang;
    private int soTienThu;
    private String ngayThu;

    public PhieuThu() {
        this.maPhieuThu = "";
        this.maKhachHang = "";
        this.soTienThu = 0;
        this.ngayThu = "";
    }

    public PhieuThu(String maPhieuThu, String maKhachHang, int soTienThu, String ngayThu) {
        this.maPhieuThu = maPhieuThu;
        this.maKhachHang = maKhachHang;
        this.soTienThu = soTienThu;
        this.ngayThu = ngayThu;
    }

    public PhieuThu(String maPhieuThu, String maKhachHang, String tenKhachHang, int soTienThu, String ngayThu) {
        this.maPhieuThu = maPhieuThu;
        this.maKhachHang = maKhachHang;
        this.tenKhachHang = tenKhachHang;
        this.soTienThu = soTienThu;
        this.ngayThu = ngayThu;
    }
    

    public String getMaPhieuThu() {
        return maPhieuThu;
    }

    public void setMaPhieuThu(String maPhieuThu) {
        this.maPhieuThu = maPhieuThu;
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

    public void setTenKhachHang(String tenKhachHang) {
        this.tenKhachHang = tenKhachHang;
    }
    
    public int getSoTienThu() {
        return soTienThu;
    }

    public void setSoTienThu(int soTienThu) {
        this.soTienThu = soTienThu;
    }

    public String getNgayThu() {
        return ngayThu;
    }

    public void setNgayThu(String ngayThu) {
        this.ngayThu = ngayThu;
    }
    
}
