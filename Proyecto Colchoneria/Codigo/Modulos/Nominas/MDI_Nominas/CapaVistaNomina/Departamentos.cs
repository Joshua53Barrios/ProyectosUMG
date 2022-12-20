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
    public partial class Departamentos : Form
    {
        public Departamentos()
        {
            InitializeComponent();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            AgregarDepto b = new AgregarDepto();
            b.Show();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "6003";
            TextBox[] Grupotextbox = { txtidDepartamento, txtnombredepa, txtdescripcion, txtestado };
            TextBox[] Idtextbox = { txtidDepartamento, txtnombredepa, txtdescripcion, txtestado };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dataGridDepartamentos;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dataGridDepartamentos, Grupotextbox, "modulo_Nominas");
        }
    }
}
