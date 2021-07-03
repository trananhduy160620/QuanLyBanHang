/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.io.Serializable;

/**
 *
 * @author ADMIN
 */
public class KhachHang implements Serializable {
    private int makh;
    private String tenkh;
    private String diachi;
    private String sodienthoai;
    private int sodu;
    private int congno;

    public KhachHang() {
    }

    public KhachHang(int makh, String tenkh, String diachi, String sodienthoai, int sodu, int congno) {
        this.makh = makh;
        this.tenkh = tenkh;
        this.diachi = diachi;
        this.sodienthoai = sodienthoai;
        this.sodu = sodu;
        this.congno = congno;
    }

    public int getMakh() {
        return makh;
    }

    public void setMakh(int makh) {
        this.makh = makh;
    }

    public String getTenkh() {
        return tenkh;
    }

    public void setTenkh(String tenkh) {
        this.tenkh = tenkh;
    }

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSodienthoai() {
        return sodienthoai;
    }

    public void setSodienthoai(String sodienthoai) {
        this.sodienthoai = sodienthoai;
    }

    public int getSodu() {
        return sodu;
    }

    public void setSodu(int sodu) {
        this.sodu = sodu;
    }

    public int getCongno() {
        return congno;
    }

    public void setCongno(int congno) {
        this.congno = congno;
    }

    
}
