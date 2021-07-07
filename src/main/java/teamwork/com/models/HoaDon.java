/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.models;


public class HoaDon {
    private String maHoaDon;
    private String maSanPham;
    private int soLuong;
    private int giaBan;
    private float khuyenMai;

    public HoaDon() {
        this.maHoaDon = "";
        this.maSanPham = "";
        this.soLuong = 0;
        this.giaBan = 0;
        this.khuyenMai = 0;
    }

    public HoaDon(String maHoaDon, String maSanPham, int soLuong, int giaBan, float khuyenMai) {
        this.maHoaDon = maHoaDon;
        this.maSanPham = maSanPham;
        this.soLuong = soLuong;
        this.giaBan = giaBan;
        this.khuyenMai = khuyenMai;
    }

    public String getMaHoaDon() {
        return maHoaDon;
    }

    public void setMaHoaDon(String maHoaDon) {
        this.maHoaDon = maHoaDon;
    }

    public String getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(String maSanPham) {
        this.maSanPham = maSanPham;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public int getGiaBan() {
        return giaBan;
    }

    public void setGiaBan(int giaBan) {
        this.giaBan = giaBan;
    }

    public float getKhuyenMai() {
        return khuyenMai;
    }

    public void setKhuyenMai(float khuyenMai) {
        this.khuyenMai = khuyenMai;
    }
    
}
