using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VistaLogistica
{
    public partial class Transporte : Form
    {
        public Transporte()
        {
            InitializeComponent();
        }

        public void checkbox()
        {
            if (checkBox1.Checked)
            {
                txtact.Text = "1";
            }
            else
            {
                txtact.Text = "0";
            }
        }

        public void txtcheck()
        {
            if (txtact.Text == "1")
            {
                checkBox1.Checked = true;
            }
            else
            {
                checkBox1.Checked = false;
            }
        }




        private void Transporte_Load(object sender, EventArgs e)
        {
            this.txtact.Visible = false;
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2005";
            TextBox[] Grupotextbox = { txtBuscar, txtMarca, txtPeso,txtTipo, txtact };
            TextBox[] Idtextbox = { txtBuscar, txtMarca, txtPeso, txtTipo, txtact };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtgBodega;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtgBodega, Grupotextbox, "bd_logistica");
        }

        private void checkBox1_CheckedChanged(object sender, EventArgs e)
        {
            checkbox();
        }

        private void txtact_TextChanged(object sender, EventArgs e)
        {
            txtcheck();
        }
    }
}
