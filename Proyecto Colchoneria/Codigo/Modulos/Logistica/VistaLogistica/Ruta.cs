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
    public partial class Ruta : Form
    {
        public Ruta()
        {
            InitializeComponent();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Hide();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2006";
            TextBox[] Grupotextbox = { txtBuscar, TxtZona, TxtCiudad, TxtDesc };
            TextBox[] Idtextbox = { txtBuscar, TxtZona, TxtCiudad, TxtDesc };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtgRuta;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtgRuta, Grupotextbox, "bd_logistica");
        }
    }
}
