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
    public partial class Nuevo_MDI : Form
    {
        Seguridad_Controlador.Controlador cnc = new Seguridad_Controlador.Controlador();
        public Nuevo_MDI()
        {
            InitializeComponent();
            customizeDesing();
            Button[] apps = { btn_modPresp, btn_RevPresp, btn_CierrePC, btn_CierreG, btn_EFinancieros,
            btn_mantEnbCtas, btn_manTctas, btn_mantPolizaD, btn_MantTipoPol, btn_MantDetPol, bnt_MantActF, btn_MantTEFinanc};
            cnc.deshabilitarApps(apps);
            //mante clases
            cnc.getAccesoApp (8002,apps[0]);
            //Mantenimiento Encabezado Cuentas
            cnc.getAccesoApp(8003, apps[1]);
            //Mantenimiento tipo cuenta
            cnc.getAccesoApp(8004, apps[2]);
            //Mantenimiento Cuentas
            cnc.getAccesoApp(8005, apps[3]);
            //Mantenimiento Tipo Poliza
            cnc.getAccesoApp(8006, apps[4]);
            // Mantenimiento Detalle Poliza
            cnc.getAccesoApp(8007, apps[5]);
            // Mantenimiento Activos Fijos
            cnc.getAccesoApp(8008, apps[6]);
            // Mantenimiento Estados Financieros
            
            // ----------- Procesos ---------

            cnc.getAccesoApp(8030, apps[7]);
            // Modificacion Presupuestos
            cnc.getAccesoApp(8031, apps[8]);
            // Revision Presupuestos
            cnc.getAccesoApp(8032, apps[9]);
            // Cierre General
            cnc.getAccesoApp(8033, apps[10]);
            // Cierre Por Cuentas
            cnc.getAccesoApp(8034, apps[11]);
            // Estados Financieros


        }
        private void customizeDesing()
        {
            //Metodo para cubrir los paneles
            panelPolizas.Visible = false;
            panelActivos.Visible = false;
            panelPresupuestos.Visible = false;
            panelEstadosF.Visible = false;
            panelCierreC.Visible = false;
            panelMant.Visible = false;
        }

        private void hideSubMenu()
        {
            if (panelPolizas.Visible == true)
                panelPolizas.Visible = false;
            if (panelActivos.Visible == true)
                panelActivos.Visible = false;
            if (panelPresupuestos.Visible == true)
                panelPresupuestos.Visible = false;
            if (panelEstadosF.Visible == true)
                panelEstadosF.Visible = false;
            if (panelCierreC.Visible == true)
                panelCierreC.Visible = false;
            if (panelMant.Visible == true)
                panelMant.Visible = false;
        }

        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = true;
        }

        private void btnCompras_Click(object sender, EventArgs e)
        {
            showSubMenu(panelPolizas);
        }

        private void btnCompra_Click(object sender, EventArgs e)
        {
            /* GeneracionPoliza polizasC = new GeneracionPoliza();
            polizasC.MdiParent = this;
            polizasC.StartPosition = FormStartPosition.CenterScreen;
            polizasC.Show();
            hideSubMenu(); */ 
        }

        private void btnRecepción_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnOrdenes_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnRequisiciones_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnDevoluciones_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnReporteCompras_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnComprobantesCompras_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnClient_Click(object sender, EventArgs e)
        {
            showSubMenu(panelActivos);
        }

        private void btnClientes_Click(object sender, EventArgs e)
        {

        }

        private void btnContactoClientes_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnDay_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnReporteCliente_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnComprobantesClientes_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnMovimientosCLientes_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnCajaClientes_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnProveedor_Click(object sender, EventArgs e)
        {
            showSubMenu(panelPresupuestos);
        }

        private void btnProveedores_Click(object sender, EventArgs e)
        {
            Presupuesto presp = new Presupuesto();
            presp.MdiParent = this;
            presp.StartPosition = FormStartPosition.CenterScreen;
            presp.Show();
            hideSubMenu();
        }

        private void btnContactosProveedores_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnPagosDia_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnReportesProveedores_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnComprobantesProveedores_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnMovimientosProveedores_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnCajaProveedores_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            showSubMenu(panelEstadosF);
        }

        private void btnFactura_Click(object sender, EventArgs e)
        {
            EstadosFinancieros efinancieros = new EstadosFinancieros();
            efinancieros.MdiParent = this;
            efinancieros.StartPosition = FormStartPosition.CenterScreen;
            efinancieros.Show();
            hideSubMenu();
        }

        private void btnPedidos_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnDevolucionesVentas_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnCotizaciones_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnVendedores_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            //Codigo
            //Ocultar submenu
            hideSubMenu();
        }

        private void central_Compra_Load(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void pictureBox2_Click(object sender, EventArgs e)
        {

        }

        private void button6_Click(object sender, EventArgs e)
        {
            showSubMenu(panelCierreC);
        }

        private void button12_Click(object sender, EventArgs e)
        {
            showSubMenu(panelMant);
        }

        private void btn_CierrePC_Click(object sender, EventArgs e)
        {
            Cierre_Por_Cuentas cxctas = new Cierre_Por_Cuentas();
            cxctas.MdiParent = this;
            cxctas.StartPosition = FormStartPosition.CenterScreen;
            cxctas.Show();
            hideSubMenu();
        }

        private void btn_CierreG_Click(object sender, EventArgs e)
        {
            Cierre_General cgeneral = new Cierre_General();
            cgeneral.MdiParent = this;
            cgeneral.StartPosition = FormStartPosition.CenterScreen;
            cgeneral.Show();
            hideSubMenu();
        }

        private void btn_mantTPC_Click(object sender, EventArgs e)
        {
            MantenimientoCuentas mantCtas = new MantenimientoCuentas();
            mantCtas.MdiParent = this;
            mantCtas.StartPosition = FormStartPosition.CenterScreen;
            mantCtas.Show();
            hideSubMenu();
        }

        private void btn_mantPC_Click(object sender, EventArgs e)
        {
            MantenimientoTipodeCuentas mantTctas = new MantenimientoTipodeCuentas();
            mantTctas.MdiParent = this;
            mantTctas.StartPosition = FormStartPosition.CenterScreen;
            mantTctas.Show();
            hideSubMenu();
        }

        private void button2_Click_1(object sender, EventArgs e)
        {
            MantenimientoEncabezadoCuentas mantclas = new MantenimientoEncabezadoCuentas();
            mantclas.MdiParent = this;
            mantclas.StartPosition = FormStartPosition.CenterScreen;
            mantclas.Show();
            hideSubMenu();
        }

        private void button5_Click(object sender, EventArgs e)
        {

        }

        private void button3_Click(object sender, EventArgs e)
        {
            MantenimientoTipoPoliza mantPol = new MantenimientoTipoPoliza();
            mantPol.MdiParent = this;
            mantPol.StartPosition = FormStartPosition.CenterScreen;
            mantPol.Show();
            hideSubMenu();
        }

        private void bnt_MantAct_Click(object sender, EventArgs e)
        {
            MantenimientoActivos mantAct = new MantenimientoActivos();
            mantAct.MdiParent = this;
            mantAct.StartPosition = FormStartPosition.CenterScreen;
            mantAct.Show();
            hideSubMenu();
        }

        private void btn_MantEFinancieros_Click(object sender, EventArgs e)
        {
            MantenimientoDetallePolizaContable mantDetPol = new MantenimientoDetallePolizaContable();
            mantDetPol.MdiParent = this;
            mantDetPol.StartPosition = FormStartPosition.CenterScreen;
            mantDetPol.Show();
            hideSubMenu();
        }

        private void btn_MantTCuenta_Click(object sender, EventArgs e)
        {
            //MantenimientoEstadosFinancieros mantEF = new MantenimientoEstadosFinancieros();
            //mantEF.MdiParent = this;
            //mantEF.StartPosition = FormStartPosition.CenterScreen;
            //mantEF.Show();
            //hideSubMenu();
        }

        private void btn_exit_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void button2_Click_2(object sender, EventArgs e)
        {
            DetallePoliza mantclas = new DetallePoliza();

            mantclas.MdiParent = this;
            mantclas.StartPosition = FormStartPosition.CenterScreen;
            mantclas.Show();
            hideSubMenu();
        }
    }
}
