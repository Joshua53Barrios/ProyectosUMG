/*Diana Victores 
 9959-19-1471
Mantenimiento Tipo Poliza*/
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
    public partial class MantenimientoTipoPoliza : Form
    {
        public MantenimientoTipoPoliza()
        {
            InitializeComponent();
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8003";
            TextBox[] Grupotextbox = { textIDTipoPoliza, textDescripcionTPoliza,
                textStatusTPoliza };
            TextBox[] Idtextbox = { textIDTipoPoliza };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dgvTipoPoliza;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dgvTipoPoliza, Grupotextbox, "colchoneria");
        }
    }
}
