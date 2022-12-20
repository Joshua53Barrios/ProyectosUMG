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
    public partial class Traslados : Form
    {
        public Traslados()
        {
            InitializeComponent();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2104";
            TextBox[] Grupotextbox = { TxtCodigo, TxtBodegaE, TxtBodegaS, TxtProd, TxtCantidad };
            TextBox[] Idtextbox = { TxtCodigo, TxtBodegaE, TxtBodegaS, TxtProd, TxtCantidad };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = DtgTraslados;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(DtgTraslados, Grupotextbox, "bd_logistica");
        }
    }
}
