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
    public partial class ExistenciaBodega : Form
    {
        public ExistenciaBodega()
        {
            InitializeComponent();
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void ExistenciaBodega_Load(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "2101";
            TextBox[] Grupotextbox = { txtIdBodega, txtIdProducto, txtExistencia };
            TextBox[] Idtextbox = { txtIdBodega, txtIdProducto, txtExistencia };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dtgExisBodega;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dtgExisBodega, Grupotextbox, "bd_logistica");
        }
    }
}
