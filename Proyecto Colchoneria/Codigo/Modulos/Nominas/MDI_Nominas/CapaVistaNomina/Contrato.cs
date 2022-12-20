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
    public partial class Contrato : Form
    {
        public Contrato()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            AgregarContrato b = new AgregarContrato();
            b.Show();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "6004";
            TextBox[] Grupotextbox = { txtIDcontrato, txtsalario, txtTipoJornada, txthorasMensuales, txtTipodePago, txtestado };
            TextBox[] Idtextbox = { txtIDcontrato, txtsalario, txtTipoJornada, txthorasMensuales, txtTipodePago, txtestado };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dataGridContrato;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dataGridContrato, Grupotextbox, "modulo_Nominas");
        }
    }
}
