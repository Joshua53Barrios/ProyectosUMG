/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectofinal;

import java.awt.Graphics;
import java.awt.Image;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.FormatterClosedException;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JPanel;


public class Registros extends javax.swing.JFrame {
 public static Formatter salida; 
 public static Scanner entrada;
  
 FondoPanel fondo= new FondoPanel();
    public Registros() {
        this.setContentPane(fondo);
        initComponents();
          this.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
          
    }

  
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnmodificar = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        panel1 = new javax.swing.JTextArea();
        btnreporte = new javax.swing.JButton();
        btneliminar = new javax.swing.JButton();
        btnbuscar = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Consultas");
        setLocation(new java.awt.Point(150, 200));

        btnmodificar.setText("MODIFICAR");
        btnmodificar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnmodificarActionPerformed(evt);
            }
        });

        panel1.setColumns(20);
        panel1.setFont(new java.awt.Font("Times New Roman", 1, 13)); // NOI18N
        panel1.setForeground(new java.awt.Color(0, 0, 102));
        panel1.setRows(5);
        jScrollPane1.setViewportView(panel1);

        btnreporte.setText("REPORTE");
        btnreporte.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnreporteActionPerformed(evt);
            }
        });

        btneliminar.setText("ELIMINAR");
        btneliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btneliminarActionPerformed(evt);
            }
        });

        btnbuscar.setText("BUSCAR");
        btnbuscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnbuscarActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(54, 54, 54)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btnreporte, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btneliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnmodificar, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnbuscar, javax.swing.GroupLayout.PREFERRED_SIZE, 166, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(33, 33, 33)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 889, Short.MAX_VALUE)
                .addGap(35, 35, 35))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 244, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btnreporte, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(37, 37, 37)
                        .addComponent(btneliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(38, 38, 38)
                        .addComponent(btnmodificar, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(38, 38, 38)
                        .addComponent(btnbuscar, javax.swing.GroupLayout.PREFERRED_SIZE, 38, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(42, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void btnmodificarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnmodificarActionPerformed
      try {
         modificar();
     } catch (IOException ex) {
         Logger.getLogger(Registros.class.getName()).log(Level.SEVERE, null, ex);
     }
    }//GEN-LAST:event_btnmodificarActionPerformed

    private void btnreporteActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnreporteActionPerformed
        panel1.setText("");
        cerrarArchivo();
        try {
         entrada=new Scanner(Paths.get("registro.txt"));
        } catch (IOException ex) {
         Logger.getLogger(Registros.class.getName()).log(Level.SEVERE, null, ex);
        }
        String texto ="\nCODIGO\tNOMBRE\tAPELLIDO\tEDAD\tDIRECCION\tTELEFONO\tCONTACTO\tPESO\tPLAN\tPAGO\tGENERO\n\n";
        String temp=" ";
        try{
            while(entrada.hasNext()){
                texto=texto+entrada.next()+"\t"+entrada.next()+"\t"+entrada.next()+"\t"+entrada.nextInt()+"\t" +entrada.next()+"\t"
                +entrada.next()+"\t"+entrada.next()+"\t"+entrada.nextDouble()+"\t"+entrada.next()+"\t"+entrada.next()+"\t"+entrada.next()+"\n";
                
            }
        }
        catch(NoSuchElementException elementException){
            JOptionPane.showMessageDialog(null,"ERROR");
        
        } 
        panel1.setText(texto);
        
        
    }//GEN-LAST:event_btnreporteActionPerformed

    private void btneliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btneliminarActionPerformed
        try {
         eliminar();
     } catch (IOException ex) {
         Logger.getLogger(Registros.class.getName()).log(Level.SEVERE, null, ex);
     }
    }//GEN-LAST:event_btneliminarActionPerformed

    private void btnbuscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnbuscarActionPerformed
        cerrarArchivo();
        String texto ="\n\tCODIGO\tNOMBRE\tAPELLIDO\tPESO\tPLAN\tTELEFONO\n\n";
         try {
         entrada= new Scanner(Paths.get("registro.txt"));
        } catch (IOException ex) {
         Logger.getLogger(Registros.class.getName()).log(Level.SEVERE, null, ex);
         }
        String nombre,apellido,direccion,telefono,contacto,codigo,buscar,genero,plan,pago;
        Double peso;
        int edad;
        buscar=JOptionPane.showInputDialog("Ingrese el codigo que desee buscar");
        try{
            while(entrada.hasNext()){
                codigo=entrada.next();
                nombre=entrada.next();
                apellido=entrada.next();
                edad=entrada.nextInt();
                direccion=entrada.next();
                telefono=entrada.next();
                contacto=entrada.next();
                peso=entrada.nextDouble();
                plan=entrada.next();
                pago=entrada.next();
                genero=entrada.next();
               
                if(buscar.equals(codigo)){
                texto=texto+ "\t"+codigo+"\t"+nombre+"\t"+apellido+"\t"+peso+"\t"+plan+"\t"+telefono+"\n";
               
                }
            }
            
        }
        catch(NoSuchElementException elementException){
            JOptionPane.showMessageDialog(null,"ERROR");
        
        }
         panel1.setText(texto);
    }//GEN-LAST:event_btnbuscarActionPerformed

    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Registros.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Registros.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Registros.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Registros.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Registros().setVisible(true);
            }
        });
    }
    
    public static void modificar() throws IOException{
          cerrarArchivo();
        ArrayList<String> text = new ArrayList();
        String texto="";
      
        int x=0;
        int opc;
        entrada= new Scanner(Paths.get("registro.txt"));
        int codigo;
        String nombre,apellido,genero,pago;
        String plan,direccion,telefono,contacto;
        Double peso;
        int cod;
        int edad;
        cod=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el codigo del registro a modificar"));
        try{
            while(entrada.hasNext()){    
                codigo=entrada.nextInt();
                nombre=entrada.next();
                apellido=entrada.next();
                edad=entrada.nextInt();
                direccion=entrada.next();
                telefono=entrada.next();
                contacto=entrada.next();
                peso=entrada.nextDouble();  
                plan=entrada.next();
                pago=entrada.next();
                genero=entrada.next();
               
                if(codigo == cod)
                {
                     opc=Integer.parseInt(JOptionPane.showInputDialog("Que campo desea modificar: "
                             + "\n1.Nombre\n2.Apellido\n3.Peso\n4.Edad\n5.Telefono\n6.Contacto\n7.Direccion"));
                     switch(opc){
                         case 1:
                             nombre=JOptionPane.showInputDialog("Ingrese el nuevo nombre: ");
                             break;
                         case 2:
                              apellido=JOptionPane.showInputDialog("Ingrese el nuevo apellido: ");
                             break;
                         case 3:
                              peso=Double.parseDouble(JOptionPane.showInputDialog("Ingrese el nuevo peso: "));
                              break;
                         case 4:
                              edad=Integer.parseInt(JOptionPane.showInputDialog("Ingrese la nueva edad: "));
                              break;
                         case 5:
                              telefono=JOptionPane.showInputDialog("Ingrese el nuevo telefono: ");
                              break;
                         case 6:
                              contacto=JOptionPane.showInputDialog("Ingrese el nuevo contacto: ");
                              break;
                         case 7:
                              direccion=JOptionPane.showInputDialog("Ingrese la nueva direccion: ");
                              break;
                         default:
                              JOptionPane.showMessageDialog(null,"OPCION INCORRECTA");
                              return;
                     }  
                
                }
                text.add(codigo+"     "+nombre+"      "+apellido+"      "+edad+"     "+direccion+"     "+telefono+"     "+contacto+
                        "      "+peso+"       "+plan+"      "+pago+"      "+genero+"\n");     
            }
              try {
                        try {
                             salida = new Formatter("registro.txt");
                        } catch (FileNotFoundException ex) {
                             Logger.getLogger(Registros.class.getName()).log(Level.SEVERE, null, ex);
                        }
                               for(int i=0; i<text.size();i++){
                                 salida.format("");
                                 salida.format(text.get(i));
                                
                                }
                        }  
                        catch (FormatterClosedException formatterClosedException) { //vverifica si no está abierto el archivo
                        JOptionPane.showMessageDialog(null,"Error al escribir en el archivo");
                          } 
                       
            JOptionPane.showMessageDialog(null,"DATOS MODIFICADOS");
            salida.close();   
        }
        catch(NoSuchElementException elementException){
            JOptionPane.showMessageDialog(null,"ERROR");
        
        }
        entrada.close();
    }
    
    public static void eliminar() throws IOException{
          cerrarArchivo();
        ArrayList<String> text = new ArrayList();
        entrada= new Scanner(Paths.get("registro.txt"));
        int codigo; int x=0;
        String nombre,apellido,genero,pago;
        String plan,direccion,telefono,contacto;
        Double peso;
        int cod;
        int edad;
       
        cod=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el codigo del registro a eliminar"));
        try{
            while(entrada.hasNext()){
                codigo=entrada.nextInt();
                nombre=entrada.next();
                apellido=entrada.next();
                edad=entrada.nextInt();
                direccion=entrada.next();
                telefono=entrada.next();
                contacto=entrada.next();
                peso=entrada.nextDouble();
                plan=entrada.next();
                pago=entrada.next();
                genero=entrada.next();
                
                if(codigo!=cod){
                     text.add(codigo+"      "+nombre+"      "+apellido+"        "+edad+"        "+direccion+ "        "+telefono+
                     "        "+contacto+"        "+peso+"      "+plan+"     "+pago+"      "+genero+"\n");
                 
                }
            }
            try {
                        try {
                             salida = new Formatter("registro.txt");
                        } catch (FileNotFoundException ex) {
                             Logger.getLogger(Registros.class.getName()).log(Level.SEVERE, null, ex);
                        }       
                                for(int i=0; i<text.size();i++){
                                 salida.format("");
                                 salida.format(text.get(i));
                                
                                }
                                JOptionPane.showMessageDialog(null,"DATO ELIMINADO");
                                
                        }  
                        catch (FormatterClosedException formatterClosedException) { 
                        JOptionPane.showMessageDialog(null,"Error al escribir en el archivo");
                          } 
            salida.close();   
        }
        catch(NoSuchElementException elementException){
            JOptionPane.showMessageDialog(null,"ERROR");
        
        }
        entrada.close();
    }
    
    
    public static void cerrarArchivo() {
    if (salida != null)
    salida.close();
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnbuscar;
    private javax.swing.JButton btneliminar;
    private javax.swing.JButton btnmodificar;
    private javax.swing.JButton btnreporte;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextArea panel1;
    // End of variables declaration//GEN-END:variables

     class FondoPanel extends JPanel{
        private Image imagen;
        @Override
        public void paint(Graphics g){
            imagen= new ImageIcon(getClass().getResource("/imagenes/fondo4.jpg")).getImage();
            
            g.drawImage(imagen, 0, 0, getWidth(), getHeight(), this);
            
            setOpaque(false);
            
            super.paint(g);
        }
    }

}
