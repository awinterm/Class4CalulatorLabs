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
    private double height;
    private double width;
    private String area;
    private final String ERROR_MSG = "Please Try Again";

    public RectangleService(String height, String width) throws IllegalArgumentException{
        if(height.isEmpty() || width.isEmpty()){
            throw new IllegalArgumentException(ERROR_MSG);
        }
        
        
        this.height = Double.parseDouble(height);
        this.width = Double.parseDouble(width);
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWidth() {
        return width;
    }

    public void setWidth(double width) {
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
