using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Capa_VistaContabilidad
{
    public partial class Cierre_Por_Cuentas : Form
    {
        String ctaselected;

        public Cierre_Por_Cuentas()
        {
            InitializeComponent();
            CargarCuentas(dgv_ctas);
            groupBoxM.Enabled = false;
            groupBoxA.Enabled = false;
        }

        private void CargarCuentas(DataGridView dgv_ctas)
        {
            
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
            dgv_ctas.Rows.Add("Caja Chica");
            dgv_ctas.Rows.Add("Bancos");
            dgv_ctas.Rows.Add("Clientes");
            dgv_ctas.Rows.Add("Cuentas Varias");
        }

        private void panel2_Paint(object sender, PaintEventArgs e)
        {

        }

        private void chckbox_manual_CheckedChanged(object sender, EventArgs e)
        {
            groupBoxM.Enabled = true;

            if (groupBoxM.Enabled == true)
            {
                groupBoxA.Enabled = false;
            }
        }

        private void chckbox_auto_CheckedChanged(object sender, EventArgs e)
        {
            groupBoxA.Enabled = true;

            if (groupBoxA.Enabled == true)
            {
                groupBoxM.Enabled = false;
            }
        }

        private void bnt_closecta_Click(object sender, EventArgs e)
        {
            CierreXCtaConf cierrecta = new CierreXCtaConf();
            cierrecta.lbl_namecta.Text = ctaselected;
            cierrecta.MdiParent = this.MdiParent;
            cierrecta.StartPosition = FormStartPosition.CenterScreen;
            cierrecta.Show();
        }

        private void btn_seleccionarcta_Click(object sender, EventArgs e)
        {
            ctaselected = dgv_ctas.CurrentCell.Value.ToString();
            lbl_cta.Text = ctaselected.ToString();
        }

        private void Cierre_Por_Cuentas_Load(object sender, EventArgs e)
        {

        }

        private void btn_addactman_Click(object sender, EventArgs e)
        {
            String razon;
            float monto;

            razon = txt_razonact.Text;
            monto = float.Parse(txt_montoact.Text);
        }

        private void bnt_addpassman_Click(object sender, EventArgs e)
        {
            String razon;
            float monto;

            razon = txt_razonpas.Text;
            monto = float.Parse(txt_montopas.Text);

        }

        private void bnt_aceptact_Click(object sender, EventArgs e)
        {

        }
    }
}
