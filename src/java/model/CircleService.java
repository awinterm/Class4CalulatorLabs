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
public class CircleService {
    private double radius;
    private String area;
    
    
    
    public CircleService(double radius) {
        this.radius = radius;
    }

    public double getRadius() {
        return radius;
    }

    public void setRadius(double radius) {
        this.radius = radius;
    }
    
     private String calculateArea(){
        area = (Math.PI * Math.pow(radius, 2) + "");
        return area;
    }
    
    public String getCalculatedArea(){
        calculateArea();
        return " <h2> The area of a Circle with a radius of " + radius + " is " + area + ".</h2>";
    }
    
}
