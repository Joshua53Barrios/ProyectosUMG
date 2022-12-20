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
    public partial class HorasExtra : Form
    {
        public HorasExtra()
        {
            InitializeComponent();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            //anio - mes - dia orden para ingresar la fecha
            NavegadorVista.Navegador.idApp = "6007";
            TextBox[] Grupotextbox = { txtIdHorasExtra, txtIdTrabajador, txtFechaHrs, txtCantidadhrsExtra };
            TextBox[] Idtextbox = { txtIdHorasExtra, txtIdTrabajador, txtFechaHrs, txtCantidadhrsExtra };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dataGridHrsExtra;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dataGridHrsExtra, Grupotextbox, "modulo_Nominas");
        }
    }
}
