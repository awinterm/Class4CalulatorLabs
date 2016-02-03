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
public class AreaCalculatorService {
    private double radius;
    private String area;
    private final String ERROR_MSG = "Please Try Again";
    private double height;
    private double width;
    private double base;
    
    private String calculateAreaCircle(){
        area = (Math.PI * Math.pow(radius, 2) + "");
        return area;
    }
    
    public String getCalculatedAreaCircle(String radius){
        this.radius = Double.parseDouble(radius);
        calculateAreaCircle();
        return " <h2 class=\"calcBox\"> The area of a Circle with a radius of " + radius + " is " + area + ".</h2>";
    }
    
    private String calculateAreaRectangle(){
        area = (height * width) + "";
        return area;
    }
    
    public String getCalculatedAreaRectangle(String height, String width){
        this.height = Double.parseDouble(height);
        this.width = Double.parseDouble(width);
        calculateAreaRectangle();
        return " <h2 class=\"calcBox\"> The area of a Rectangle with a height of " + height + " and width of " + width + " is " + area + ".</h2>";
    }
    
    private String calculateAreaTriangle(){
        area = (height * base)/2 + "";
        return area;
    }
    
    public String getCalculatedAreaTriangle(String height, String base){
         this.height = Double.parseDouble(height);
        this.base = Double.parseDouble(base);
        calculateAreaTriangle();
        return " <h2 class=\"calcBox\"> The area of a Triangle with a height of " + height + " and a base of " + base + " is " + area + ".</h2>";
    }
    
    
    
}
