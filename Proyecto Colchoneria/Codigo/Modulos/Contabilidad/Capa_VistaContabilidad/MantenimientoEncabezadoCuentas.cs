/*Diana Victores
 9959-19-1471
 mantenimiento encabezado de cuentas*/

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
    public partial class MantenimientoEncabezadoCuentas : Form
    {
        public MantenimientoEncabezadoCuentas()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8002";
            TextBox[] Grupotextbox = { textIDEncabezado, textNombreEncabezado, textStatusEncabezado};
            TextBox[] Idtextbox = { textIDEncabezado };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dgvClaseCuentaEncabezado;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dgvClaseCuentaEncabezado, Grupotextbox, "colchoneria");
        }
    }
}
