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
    private double height;
    private double base;
    private String area;
    private final String ERROR_MSG = "Please Try Again";

    public TriangleService(String height, String base) throws IllegalArgumentException {
        if(height.isEmpty() || base.isEmpty()){
            throw new IllegalArgumentException(ERROR_MSG);
        }
        
        this.height = Double.parseDouble(height);
        this.base = Double.parseDouble(base);
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getBase() {
        return base;
    }

    public void setBase(double base) {
        this.base = base;
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
