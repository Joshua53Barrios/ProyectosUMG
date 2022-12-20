using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVistaNomina
{
    public partial class PrestacionesDeducciones : Form
    {
        public PrestacionesDeducciones()
        {
            InitializeComponent();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "6005";
            TextBox[] Grupotextbox = { txtIDprestaciones, txtnombreprestaciones, txttipoprestaciones, txtporcentaje, txtvalorfijo, txtestado };
            TextBox[] Idtextbox = { txtIDprestaciones, txtnombreprestaciones, txttipoprestaciones, txtporcentaje, txtvalorfijo, txtestado };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dataGridPer;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dataGridPer, Grupotextbox, "modulo_Nominas");
        }
    }
}
