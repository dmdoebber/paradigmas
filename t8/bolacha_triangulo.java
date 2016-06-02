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
public class bolacha_triangulo extends Bolacha{
    private double lado, hip;
    private Ponto p;
    
    public bolacha_triangulo(){
        lado = 0.0;
        hip = 0.0;
    }
    
    public bolacha_triangulo(Ponto p, double lado, double hip){
        super.setPonto(p);
        super.setTipo(2);
        this.lado = lado;
        this.hip = hip;
        super.setArea((lado * hip) / 2);
    }
}