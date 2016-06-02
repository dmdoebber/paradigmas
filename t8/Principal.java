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
import static java.lang.Math.pow;
import java.util.ArrayList;
import java.util.Random;
public class Principal {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        ArrayList<Bolacha> bolachas = new ArrayList();
        Random gerador = new Random();
        Bolacha maior;
        int tipo_bolacha, tam_padrao  = 10;
        double raio, lado, hip, altura, comprimento;
        Ponto p = new Ponto();
        
        for(int x = 0; x < 10; x++){
            for(int y = 0; y < 5; y++){
                tipo_bolacha = 1 + gerador.nextInt(3);
                p.setX(x * tam_padrao);
                p.setY(y * tam_padrao);
                switch(tipo_bolacha){
                    case 1:
                        raio = gerador.nextDouble()* tam_padrao/2;
                        bolacha_circulo c = new bolacha_circulo(p, raio);
                        bolachas.add(c);
                        break;
                    case 2:
                        lado = gerador.nextDouble() * tam_padrao;
                        hip = (double) Math.sqrt(pow(lado, 2) + pow (lado, 2));
                        bolacha_triangulo t = new bolacha_triangulo(p, lado, hip);
                        bolachas.add(t);
                        break;
                    case 3:
                        altura = gerador.nextDouble() * tam_padrao;
                        comprimento = gerador.nextDouble() * tam_padrao;
                        bolacha_retangulo r = new bolacha_retangulo(p, altura, comprimento);
                        bolachas.add(r);
                        break;   
                }
            }        
        }
        maior = bolachas.get(0);
        for(int i = 0; i < 50; i++){
            if(bolachas.get(i).getArea() > maior.getArea()){
                maior = bolachas.get(i);
            }
        }
        System.out.println("Maior bolacha:  Tipo - " + maior.getTipo() + "\n\t\tArea: "+maior.getArea() + " cm²");
    }
}
