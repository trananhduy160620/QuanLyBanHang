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
public class PhieuXuat {
    private String maPhieuXuat;
    private String maKhachHang;
    private String maHoaDon;
    private String ngayXuat;
    private float tongTien;

    public PhieuXuat() {
        this.maPhieuXuat = "";
        this.maKhachHang = "";
        this.maHoaDon = "";
        this.ngayXuat = "";
        this.tongTien = 0;
    }

    public PhieuXuat(String maPhieuXuat, String maKhachHang, String maHoaDon, String ngayXuat, float tongTien) {
        this.maPhieuXuat = maPhieuXuat;
        this.maKhachHang = maKhachHang;
        this.maHoaDon = maHoaDon;
        this.ngayXuat = ngayXuat;
        this.tongTien = tongTien;
    }

    public String getMaPhieuXuat() {
        return maPhieuXuat;
    }

    public void setMaPhieuXuat(String maPhieuXuat) {
        this.maPhieuXuat = maPhieuXuat;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getNgayXuat() {
        return ngayXuat;
    }

    public void setNgayXuat(String ngayXuat) {
        this.ngayXuat = ngayXuat;
    }

    public float getTongTien() {
        return tongTien;
    }

    public void setTongTien(float tongTien) {
        this.tongTien = tongTien;
    }

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }
}
