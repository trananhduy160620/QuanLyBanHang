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
public class SmallBill {
    private String maSanPham;
    private int soLuong;
    private int giaBan;

    public SmallBill(String maSanPham, int soLuong, int giaBan) {
        this.maSanPham = maSanPham;
        this.soLuong = soLuong;
        this.giaBan = giaBan;
    }

    public SmallBill() {
        this.maSanPham = "";
        this.soLuong = 0;
        this.giaBan = 0;
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
    
    
}
