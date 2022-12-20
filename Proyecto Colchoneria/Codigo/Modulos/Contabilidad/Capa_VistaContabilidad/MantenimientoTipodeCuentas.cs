/*Diana Victores 
 9959-19-1471
Mantenimiento Tipo Cuentas*/
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
    public partial class MantenimientoTipodeCuentas : Form
    {
        public MantenimientoTipodeCuentas()
        {
            InitializeComponent();
        }

        private void MantenimientoTipodeCuentas_Load(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8004";
            TextBox[] Grupotextbox = { txtID,textNombreTipoCuenta
                    ,textSerieTipoCuenta,textStatus};
            TextBox[] Idtextbox = { txtID };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dgvTipoCuenta;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dgvTipoCuenta, Grupotextbox, "Colchoneria");
        }
    }
}
