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
    public partial class AsignacionVacaciones : Form
    {
        public AsignacionVacaciones()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (ListaDatos.Visible == false)
            {
                //896; 470
                ListaDatos.Visible = true;
                Size = new Size(896, 470);
            }
            else
            {
                //566; 470
                ListaDatos.Visible = false;
                Size = new Size(566, 470);
            }
        }
    }
}
