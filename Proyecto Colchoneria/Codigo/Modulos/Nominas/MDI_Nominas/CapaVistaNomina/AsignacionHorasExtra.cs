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
    public partial class AsignacionHorasExtra : Form
    {
        public AsignacionHorasExtra()
        {
            InitializeComponent();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            if (ListaDatos.Visible == false)
            {
                //893; 499
                ListaDatos.Visible = true;
                Size = new Size(893, 499);
            }
            else
            {
                //565; 499
                ListaDatos.Visible = false;
                Size = new Size(565, 499);
            }
        }

        private void AsignacionHorasExtra_Load(object sender, EventArgs e)
        {
            Size = new Size(565, 499);
            txtDato.Visible = false;
        }
    }
}
