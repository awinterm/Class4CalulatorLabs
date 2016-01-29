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
public class RectangleService {
    int height;
    int width;
    String area;

    public RectangleService(String height, String width) {
        // validate here.
        
        this.height = Integer.parseInt(height);
        this.width = Integer.parseInt(width);
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }
    
    private String calculateArea(){
        area = (height * width) + "";
        return area;
    }
    
    public String getCalculatedArea(){
        calculateArea();
        return " <h2> The area of a Rectangle with a height of " + height + " and width of " + width + " is " + area + ".</h2>";
    }
}
