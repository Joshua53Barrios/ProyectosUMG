using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace VistaLogistica

{
    

    public partial class Menu : Form
    {

        Seguridad_Controlador.Controlador cnseg = new Seguridad_Controlador.Controlador();


        public Menu()
        {
            InitializeComponent();
            customizeDesing();

            Button[] apps = { btnMarca, btnLinea, btnBodegas, btnProductos, btntrans_porte, btnRuta, btnConductor, Btntipotransporte, btnExistenciaBodegas, btnLotes, btnEnvios, BtnTraslados, btnMovimientos, btnInventario, btseguridadsegundo, btrayuda };
            cnseg.deshabilitarApps(apps);

            cnseg.getAccesoApp(2001, apps[0]);
            cnseg.getAccesoApp(2002, apps[1]);
            cnseg.getAccesoApp(2003, apps[2]);
            cnseg.getAccesoApp(2004, apps[3]);
            cnseg.getAccesoApp(2005, apps[4]);
            cnseg.getAccesoApp(2006, apps[5]);
            cnseg.getAccesoApp(2007, apps[6]);
            cnseg.getAccesoApp(2008, apps[7]);


            cnseg.getAccesoApp(2101, apps[8]);
            cnseg.getAccesoApp(2102, apps[9]);
            cnseg.getAccesoApp(2103, apps[10]);
            cnseg.getAccesoApp(2104, apps[11]);

            cnseg.getAccesoApp(2201, apps[12]);
            cnseg.getAccesoApp(2202, apps[13]);

            cnseg.getAccesoApp(2301, apps[14]);

            cnseg.getAccesoApp(2401, apps[15]);

        }
        private void customizeDesing()
        {
            paninvent.Visible = false;
            panelTranportes.Visible = false;
            PanelAuditoria.Visible = false;
            //  panManteniminetos.Visible = false;
            panelayuda.Visible = false;
            panelseguridad.Visible = false;
            //PANELARCHIVO.Visible = false;
        }


        public void imagen()
        {
            //GRIMAGEN.Visible = true;
        }


        private void hideSubMenu()
        {
            if (paninvent.Visible == true)
                paninvent.Visible = false;
            if (panelTranportes.Visible == true)
                panelTranportes.Visible = false;
            if (PanelAuditoria.Visible == true)
                PanelAuditoria.Visible = false;
            // if (panManteniminetos.Visible == true)
            // panManteniminetos.Visible = false;
            if (panelseguridad.Visible == true)
                panelseguridad.Visible = false;
            if (panelayuda.Visible == true)
                panelayuda.Visible = false;
            //if (PANELARCHIVO.Visible == true)
            // PANELARCHIVO.Visible = false;
        }

        private void showSubMenu(Panel subMenu)
        {
            if (subMenu.Visible == false)
            {
                hideSubMenu();
                subMenu.Visible = true;
            }
            else
                subMenu.Visible = false;
        }


        private void Menu_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {

        }

        

        private void btnInventarios_Click_1(object sender, EventArgs e)
        {
            showSubMenu(paninvent);
        }

        private void btnTransporte_Click_1(object sender, EventArgs e)
        {
            showSubMenu(panelTranportes);
        }

        private void btnAuditoria_Click_1(object sender, EventArgs e)
        {
            showSubMenu(PanelAuditoria);
        }

        private void btnseguridad_Click_1(object sender, EventArgs e)
        {
            showSubMenu(panelseguridad);
        }

        private void btnayu_Click_1(object sender, EventArgs e)
        {
            showSubMenu(panelayuda);
        }

        private void btnmovinvent_Click_1(object sender, EventArgs e)
        {
            Marca b = new Marca();
            b.MdiParent = this;
            b.Show();
            pictureBox2.Visible = false;
            hideSubMenu();
        }

        private void btnCierre_Click(object sender, EventArgs e)
        {
            Linea b = new Linea();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnReporte_Click(object sender, EventArgs e)
        {
            Bodega b = new Bodega();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnTraslados_Click(object sender, EventArgs e)
        {
            ExistenciaBodega b = new ExistenciaBodega();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btntrans_Click(object sender, EventArgs e)
        {
            Transporte b = new Transporte();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
        }

        private void btnMuestreo_Click(object sender, EventArgs e)
        {
            Movimientos b = new Movimientos();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btaudito_Click(object sender, EventArgs e)
        {
            
        }

        private void btseguridadsegundo_Click(object sender, EventArgs e)
        {

        }

        private void btrayuda_Click(object sender, EventArgs e)
        {
            prueba b = new prueba();
            b.MdiParent = this;
            b.Show();
        }

        private void Menu_Load_1(object sender, EventArgs e)
        {
            //this.WindowState = FormWindowState.Maximized;
        }

        private void btnProductos_Click(object sender, EventArgs e)
        {
            Producto b = new Producto();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btntrans_porte_Click(object sender, EventArgs e)
        {
            Transporte b = new Transporte();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnRuta_Click(object sender, EventArgs e)
        {
            Ruta b = new Ruta();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnConductor_Click(object sender, EventArgs e)
        {
            Conductor b = new Conductor();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnLotes_Click(object sender, EventArgs e)
        {
            Lote b = new Lote();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnEnvios_Click(object sender, EventArgs e)
        {
            Envio b = new Envio();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnInventario_Click(object sender, EventArgs e)
        {
            Inventario b = new Inventario();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void btnSalida_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            TipoTransporte b = new TipoTransporte();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }

        private void BtnTraslados_Click_1(object sender, EventArgs e)
        {
            Traslados b = new Traslados();
            b.MdiParent = this;
            b.Show();
            hideSubMenu();
            pictureBox2.Visible = false;
        }
    }
}
