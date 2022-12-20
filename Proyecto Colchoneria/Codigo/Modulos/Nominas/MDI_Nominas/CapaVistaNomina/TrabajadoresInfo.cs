using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using CapaControladorNomina;

namespace CapaVistaNomina
{
    public partial class TrabajadoresInfo : Form
    {
        Controlador cn = new Controlador();
        string emp = "tbl_usuarios";

        public void actualizardatagriew()
        {
            DataTable dt = cn.llenarTbl(emp);
            dataGridView1.DataSource = dt;

        }
        public TrabajadoresInfo()
        {
            InitializeComponent();
        }

        private void TrabajadoresInfo_Load(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            actualizardatagriew();
        }

        private void btnAgregar_Click(object sender, EventArgs e)
        {
            AgregarTrabajador b = new AgregarTrabajador();
            b.Show();
        }

   
    }
}
