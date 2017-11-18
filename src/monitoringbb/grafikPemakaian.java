/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package monitoringbb;

import org.jfree.chart.*;
import org.jfree.chart.plot.PlotOrientation;
import org.jfree.data.category.DefaultCategoryDataset;
import org.jfree.data.category.DefaultIntervalCategoryDataset;

/**
 *
 * @author ADMIN-PC
 */
public class grafikPemakaian
        extends javax.swing.JFrame {

    /**
     * Creates new form grafikPemakaian
     */
    public grafikPemakaian() {
        initComponents();
        
    }
    
    public void gPemakaiaan(){
         DefaultCategoryDataset dcd = new DefaultCategoryDataset();
         dcd.addValue(30, "Yogyakarta", "2009"); // Value,RowKey,ColumnKey
         dcd.addValue(40,"Bali","2009");
         dcd.addValue(15,"Lombok","2009");
         dcd.addValue(15,"Bandung","2009");
         
         dcd.addValue(35,"Yogyakarta","2010"); // Value,RowKey,ColumnKey
         dcd.addValue(35,"Bali","2010");
         dcd.addValue(20,"Lombok","2010");
         dcd.addValue(10,"Bandung","2010");
         
         dcd.addValue(40,"Yogyakarta","2011"); // Value,RowKey,ColumnKey
         dcd.addValue(45,"Bali","2011");
         dcd.addValue(10,"Lombok","2011");
         dcd.addValue(5,"Bandung","2011");
         
         JFreeChart freeChart = ChartFactory.createBarChart(
                 "Pariwisata Indonesia 2011", "Tahun", "Kunjungan Wisata (Dalam Persen / %)", dcd, PlotOrientation.VERTICAL,true,true,true);
                  // Strinarg0, string arg1,string arg2, Category dataset, Plot orentation, boolean arg4, boolean arg5, boolean arg6
                  
                  ChartFrame cf = new ChartFrame("Data kota Pariwisata Indonesia", freeChart);
                  cf.setSize(1000,800);
                  cf.setVisible(true);
                  cf.setLocationRelativeTo(null);
        }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 300, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    /**
     * @param args the command line arguments
     */
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
            java.util.logging.Logger.getLogger(grafikPemakaian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(grafikPemakaian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(grafikPemakaian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(grafikPemakaian.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        
             
        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new grafikPemakaian().setVisible(true);
                
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    // End of variables declaration//GEN-END:variables
}
