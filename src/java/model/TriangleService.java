/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author andre_000
 */
public class TriangleService {
    private int height;
    private int base;
    private String area;

    public TriangleService(int height, int width) {
        this.height = height;
        this.base = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getBase() {
        return base;
    }

    public void setBase(int base) {
        this.base = base;
    }
    
    
    
    private String calculateArea(){
        area = (height * base)/2 + "";
        return area;
    }
    
    public String getCalculatedArea(){
        calculateArea();
        return " <h2> The area of a Triangle with a height of " + height + " and a base of " + base + " is " + area + ".</h2>";
    }
    
    
    
    
    
    
    
}
