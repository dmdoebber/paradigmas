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
public class bolacha_retangulo extends Bolacha{
    private double altura, comprimento;
    private Ponto p;
    
    public bolacha_retangulo(){
        altura = 0.0;
        comprimento = 0.0;
    }
    
    public bolacha_retangulo(Ponto p, double altura, double comprimento){
        super.setTipo(3);
        this.p = p;
        this.altura = altura;
        this.comprimento = comprimento;
        super.setArea(altura * comprimento);
    }
}
