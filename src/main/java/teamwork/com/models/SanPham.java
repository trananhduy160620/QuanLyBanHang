/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package teamwork.com.models;

/**
 *
 * @author duytran
 */
public class SanPham {
    private String maSanPham;
    private String tenSanPham;
    private int quycach;
    private int giaSanPham;

    public SanPham(String maSanPham, String tenSanPham, int quycach, int giaSanPham) {
        this.maSanPham = maSanPham;
        this.tenSanPham = tenSanPham;
        this.quycach = quycach;
        this.giaSanPham = giaSanPham;
    }
    public SanPham() {
        this.maSanPham = "";
        this.tenSanPham = "";
        this.quycach = 0;
        this.giaSanPham = 0;
    }

    public String getMaSanPham() {
        return maSanPham;
    }

    public void setMaSanPham(String maSanPham) {
        this.maSanPham = maSanPham;
    }

    public String getTenSanPham() {
        return tenSanPham;
    }

    public void setTenSanPham(String tenSanPham) {
        this.tenSanPham = tenSanPham;
    }

    public int getQuycach() {
        return quycach;
    }

    public void setQuycach(int quycach) {
        this.quycach = quycach;
    }

    public int getGiaSanPham() {
        return giaSanPham;
    }

    public void setGiaSanPham(int giaSanPham) {
        this.giaSanPham = giaSanPham;
    }
    
    
}
