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
    public partial class Envio : Form
    {
        public Envio()
        {
            InitializeComponent();
        }

        private void Envio_Load(object sender, EventArgs e)
        {
            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2103";
            TextBox[] Grupotextbox = { txtBuscar, txtIdTransporte, txtIdRuta, txtIdConductor, txtTiempoEstimado, TxtFecha, txtIdLote, txtIdBodega, txtIdCliente, txtObservaciones, txtDestino };
            TextBox[] Idtextbox = { txtBuscar, txtIdTransporte, txtIdRuta, txtIdConductor, txtTiempoEstimado, TxtFecha, txtIdLote, txtIdBodega, txtIdCliente, txtObservaciones, txtDestino };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtgIote;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtgIote, Grupotextbox, "bd_logistica");
        }
    }
}
