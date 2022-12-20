using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using ControladorLogistica;

namespace VistaLogistica
{
    public partial class Marca : Form
    {
        Menu mn = new Menu();
        string table = "tbl_marca";
        //ControladorLogistica.Controlador cn = new Controlador();
        public Marca()
        {
            InitializeComponent();
        }
        public void limpiar()
        {
            txtMarca.Text = "";
        }

        private void button2_Click(object sender, EventArgs e) //boton limpiar
        {
            txtMarca.Text = "";
            txtBuscar.Text = "";
        }

        private void button7_Click(object sender, EventArgs e) //boton eliminar
        {
            string message = "Deseas Eliminar el Registro?";
            string title = "Eliminar Registro";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result = MessageBox.Show(message, title, buttons);

        }

        private void button3_Click(object sender, EventArgs e) //boton guardar o ingresar
        {
            if (txtMarca.Text == "")
            {
                MessageBox.Show("COMPLETAR INFORMACION");
            }
            else
            {

                TextBox[] textbox = { txtMarca };
                //cn.ingresar(textbox, table);
                string message = "Registro Guardado";
                limpiar();
                MessageBox.Show(message);
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
            mn.pictureBox2.Show();
        }

        private void Marca_Load(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2001";
            TextBox[] Grupotextbox = { txtBuscar, txtMarca };
            TextBox[] Idtextbox = { txtBuscar, txtMarca };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtgMarca;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtgMarca, Grupotextbox, "bd_logistica");
        }
    }
}
