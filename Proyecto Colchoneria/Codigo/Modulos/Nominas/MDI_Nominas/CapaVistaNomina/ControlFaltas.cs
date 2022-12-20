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
    public partial class ControlFaltas : Form
    {
        public ControlFaltas()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //888; 528

            if (ListaDatos.Visible == false)
            {
                ListaDatos.Visible = true;
                Size = new Size(888, 528);
            }
            else
            {
                //560; 528
                ListaDatos.Visible = false;
                Size = new Size(560, 528);
            }
        }

        private void ControlFaltas_Load(object sender, EventArgs e)
        {
            Size = new Size(560, 528);
            //txtDato.Visible = false;
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "6007";
            TextBox[] Grupotextbox = { txtIdFaltas, txtIdEmpleado, txtFechaAlta, txtmesalta, txtjustificacion };
            TextBox[] Idtextbox = { txtIdFaltas, txtIdEmpleado, txtFechaAlta, txtmesalta, txtjustificacion };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dataGridFaltas;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dataGridFaltas, Grupotextbox, "modulo_Nominas");
        }
    }
}
