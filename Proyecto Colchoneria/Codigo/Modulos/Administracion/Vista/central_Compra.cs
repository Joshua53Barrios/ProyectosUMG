using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace ComprasVista
{
    public partial class central_Compra : Form
    {
        /*Seguridad_Controlador.Controlador cnseg = new Seguridad_Controlador.Controlador();*/
        public central_Compra()
        {
            InitializeComponent();
            customizeDesing();

            Button [] apps = { btnCliente, btnProveedores };
           /* cnseg.deshabilitarApps(apps);

            cnseg.getAccesoApp(3001, apps[0]);
            cnseg.getAccesoApp(3002, apps[1]);*/
        }
        private void customizeDesing()
        {
            //Metodo para cubrir los paneles
            panelCompras.Visible = false;
            panelClientes.Visible = false;
            panel1.Visible = false;
            panel2.Visible = false;
            panel3.Visible = false;
        }

        private void hideSubMenu()
        {
            if (panelCompras.Visible == true)
                panelCompras.Visible = false;
            if (panelClientes.Visible == true)
                panelClientes.Visible = false;
            if (panel1.Visible == true)
                panel1.Visible = false;
            if (panel2.Visible == true)
                panel2.Visible = false;
            if (panel3.Visible == true)
                panel3.Visible = false;

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
            
            showSubMenu(panelCompras);

        }

        private void btnCompra_Click(object sender, EventArgs e)
        {
            //Codigo
            Clientes cl = new Clientes();
            cl.MdiParent = this;
            cl.Show();
            pictureBox2.Visible = false;
            //Ocultar submenu
            hideSubMenu();


 
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
            showSubMenu(panelClientes);
        }

        private void btnClientes_Click(object sender, EventArgs e)
        {
            //Codigo
          
            //Ocultar submenu
            hideSubMenu();
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
            showSubMenu(panel1);
        }

        private void btnProveedores_Click(object sender, EventArgs e)
        {
            //Codigo
           
            //Ocultar submenu
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
            showSubMenu(panel2);
        }

        private void btnFactura_Click(object sender, EventArgs e)
        {
            //Codigo
           
            //Ocultar submenu
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

        private void btnMovimientos_Click(object sender, EventArgs e)
        {
            //Codigo
           
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnVentas_Click(object sender, EventArgs e)
        {
            //Codigo
           
            //Ocultar submenu
            hideSubMenu();
        }

        private void btnPrecios_Click(object sender, EventArgs e)
        {
           
            hideSubMenu();
        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {
            showSubMenu(panel3);
        }
    }
}
