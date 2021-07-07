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
public class KhachHang {

    private String maKhachHang;
    private String tenKhachHang;
    private String diachi;
    private String sdt;
    private int sodu;
    private int congno;

    public KhachHang(String maKhachHang, String tenKhachHang, String diachi, String sdt, int sodu, int congno) {
        this.maKhachHang = maKhachHang;
        this.tenKhachHang = tenKhachHang;
        this.diachi = diachi;
        this.sdt = sdt;
        this.sodu = sodu;
        this.congno = congno;
    }

    public KhachHang() {
        this.maKhachHang = "";
        this.tenKhachHang = "";
        this.diachi = "";
        this.sdt = "";
        this.sodu = 0;
        this.congno = 0;
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

    public String getDiachi() {
        return diachi;
    }

    public void setDiachi(String diachi) {
        this.diachi = diachi;
    }

    public String getSdt() {
        return sdt;
    }

    public void setSdt(String sdt) {
        this.sdt = sdt;
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
