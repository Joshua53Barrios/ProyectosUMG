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
    public partial class Lote : Form
    {
        public Lote()
        {
            InitializeComponent();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void Lote_Load(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2102";
            TextBox[] Grupotextbox = { txtBuscar, txtIdProducto, txtCantidad };
            TextBox[] Idtextbox = { txtBuscar, txtIdProducto, txtCantidad };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtglote;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtglote, Grupotextbox, "bd_logistica");
        }
    }
}
