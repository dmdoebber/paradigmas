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
public class bolacha_circulo extends Bolacha{
    private Ponto centro, p;
    private double raio;
    
    public bolacha_circulo(){
        centro = new Ponto();
        raio = 0.0;
    }
    
    public bolacha_circulo(Ponto p, double raio){
        super.setTipo(1);
        centro = new Ponto();
        this.p = p;
        centro.setX(p.getX() + tamP / 2 );
        centro.setY(p.getY() + tamP / 2 );
        this.raio = raio;
        super.setArea(Math.PI * (raio*raio));
    }    
}