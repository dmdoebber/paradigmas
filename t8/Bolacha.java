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
public class Bolacha{
    public static final double tamP = 10.0;
    private double area;
    private Ponto p;
    private static int tipo;
    
    public Bolacha(){
        area = 0.0;
        tipo = 0;
    }
    
    public double getArea(){
        return area;
    }
    
    public void setArea(double area){
        this.area = area;
    }
    
    public void setPonto(Ponto p){
        this.p = p;
    }
    
    public String getTipo(){
        switch(tipo){
            case 1: 
                return "Circulo";
            case 2:
                return "Triangulo";
            case 3: 
                return "Retangulo";
            default:
                return "";
        }
    }
    public void setTipo(int tipo){
        this.tipo = tipo;
    }
}
