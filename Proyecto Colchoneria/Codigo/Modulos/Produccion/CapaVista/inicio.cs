using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaProduccion
{
    public partial class inicio : Form
    {
        public int prueba = 0;
        public inicio()
        {
            InitializeComponent();
            customizeDesing();
        }
        private void customizeDesing()
        {
            panel2.Visible = false;
            panel3.Visible = false;
            panel6.Visible = false;
            panel7.Visible = false;
            panel8.Visible = false;
            panel9.Visible = false;


        }

        private void hideSubMenu()
        {
            if (panel2.Visible == true)
                panel2.Visible = false;
            if (panel3.Visible == true)
                panel3.Visible = false;
            if (panel6.Visible == true)
                panel6.Visible = false;
            if (panel7.Visible == true)
                panel7.Visible = false;
            if (panel8.Visible == true)
                panel8.Visible = false;
            if (panel9.Visible == true)
                panel9.Visible = false;
        }

        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
            
        }

        private void button2_Click(object sender, EventArgs e)
        {
            showSubMenu(panel3);
           
        }

        private void button1_Click(object sender, EventArgs e)
        {

            showSubMenu(panel2);
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
           
            


        }


        private void button4_Click(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void backgroundWorker1_DoWork(object sender, DoWorkEventArgs e)
        {

        }

        private void inicio_Load(object sender, EventArgs e)
        {
            
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button4_Click_1(object sender, EventArgs e)
        {

            hideSubMenu();
        }

        private void button5_Click(object sender, EventArgs e)
        {
          
            hideSubMenu();

        }

        private void button7_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void button6_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void button9_Click(object sender, EventArgs e)
        {
            
            hideSubMenu();
        }

        private void button12_Click(object sender, EventArgs e)
        {
            showSubMenu(panel6);
        }

        private void panel6_Paint(object sender, PaintEventArgs e)
        {

        }

        private void button8_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void button11_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void button14_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void button16_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button13_Click(object sender, EventArgs e)
        {
            showSubMenu(panel7);
        }

        private void button15_Click(object sender, EventArgs e)
        {
            showSubMenu(panel8);
        }

        private void button17_Click(object sender, EventArgs e)
        {
            showSubMenu(panel9);
        }

        private void pictureBox1_Click_1(object sender, EventArgs e)
        {

        }
    }
}
