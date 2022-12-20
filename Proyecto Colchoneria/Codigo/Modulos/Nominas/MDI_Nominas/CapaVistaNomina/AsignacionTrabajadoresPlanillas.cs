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
    public partial class AsignacionTrabajadoresPlanillas : Form
    {
        public AsignacionTrabajadoresPlanillas()
        {
            InitializeComponent();
        }

        private void AsignacionTrabajadoresPlanillas_Load(object sender, EventArgs e)
        {
            //591; 547
            Size = new Size(591, 547);
            ListaDatos.Visible = false;
            txtDato.Visible = false;
        }

        private void button3_Click(object sender, EventArgs e)
        {
            //927; 547

            if (ListaDatos.Visible == false)
            {
                ListaDatos.Visible = true;
                Size = new Size(927, 547);
            }
            else
            {
                ListaDatos.Visible = false;
                Size = new Size(591, 547);
            }
            
        }

 
    }
}
