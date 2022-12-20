
package proyectofinal;

import javax.swing.JOptionPane;

public class ProyectoFinal {

   
    public static void main(String[] args) {
         int seña=123;
         int contra;
        
     do{
             contra=Integer.parseInt(JOptionPane.showInputDialog("Ingrese la contraseña para acceder"));
     }while(contra!=seña);
        Menu generar = new Menu();
            generar.setVisible(true);
    }
    
}
