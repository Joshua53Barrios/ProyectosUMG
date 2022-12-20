/*Diana Victores 
 9959-19-1471
Mantenimiento TDetalle Poliza*/
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
    public partial class MantenimientoDetallePolizaContable : Form
    {
        public MantenimientoDetallePolizaContable()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void MantenimientoPolizaContable_Load(object sender, EventArgs e)
        {

        }

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8002";
            TextBox[] Grupotextbox = { textIDPoliza,
                textIDTPoliza, textIDCuenta, textSaldo,  textConcepto };
            TextBox[] Idtextbox = { textIDPoliza };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dgvPolizaDetalle;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dgvPolizaDetalle, Grupotextbox, "colchoneria");
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
