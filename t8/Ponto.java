/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bolacha;
/**
 *
 * @author Daniel
 */
public class Ponto{
    private double x;
    private double y;
    
    public Ponto(){
        x = 0.0;
        y = 0.0;
    }
    
    public Ponto (double x, double y){
        this.x = x;
        this.y = y;
    }
    
    public double  getX(){
        return x;
    }
    
    public double  getY(){
        return y;
    }
    
    public void setX(double x){
        this.x  = x;
    }
    
    public void setY(double y){
        this.x  = y;
    }
    
}
