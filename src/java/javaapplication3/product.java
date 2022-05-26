/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package javaapplication3;

import java.util.List;

/**
 *
 * @author admin
 */
public class product {
    public static List<product> getListProduct() {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    private int id;
    private String img;
    private String heading;
    private int giamoi;
    private int giacu;
    private int view;
    private int sale;
    private int categoryid;
    public product(){}

    public product(int id, String img, String heading, int giamoi, int giacu, int view, int sale, int categoryid) {
        this.id = id;
        this.img = img;
        this.heading = heading;
        this.giamoi = giamoi;
        this.giacu = giacu;
        this.view = view;
        this.sale = sale;
        this.categoryid = categoryid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getHeading() {
        return heading;
    }

    public void setHeading(String heading) {
        this.heading = heading;
    }

    public int getGiamoi() {
        return giamoi;
    }

    public void setGiamoi(int giamoi) {
        this.giamoi = giamoi;
    }

    public int getGiacu() {
        return giacu;
    }

    public void setGiacu(int giacu) {
        this.giacu = giacu;
    }

    public int getView() {
        return view;
    }

    public void setView(int view) {
        this.view = view;
    }

    public int getSale() {
        return sale;
    }

    public void setSale(int sale) {
        this.sale = sale;
    }

    public int getCategoryid() {
        return categoryid;
    }

    public void setCategoryid(int categoryid) {
        this.categoryid = categoryid;
    }
    
}
