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
    public partial class Linea : Form
    {
        public Linea()
        {
            InitializeComponent();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
            
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2002";
            TextBox[] Grupotextbox = { txtBuscar, txtLinea };
            TextBox[] Idtextbox = { txtBuscar, txtLinea };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtgLinea;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtgLinea, Grupotextbox, "bd_logistica");
        }
    }
}
