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
    public partial class MenuPrincipal : Form
    {
        Seguridad_Controlador.Controlador cnseg = new Seguridad_Controlador.Controlador();
        public MenuPrincipal()
        {
            InitializeComponent();
            customizeDesing();

            Button[] apps = { btnTrabajadores, btnPuestos, btnDepto, btnContrato, btnPres, btnHorasX,
                btnFaltas, btnAsPuestoDepto, btnAsPuestoTrab, btnAsContratoTrab, btnAsContratoPres, btnPercyDeduc,
                btnNomina,btnRplanilla,btnRcontrato,bntRtrabajador,btnSegNomina,btnInfo};
            cnseg.deshabilitarApps(apps);

            cnseg.getAccesoApp(6001, apps[0]);
            cnseg.getAccesoApp(6002, apps[1]);
            cnseg.getAccesoApp(6003, apps[2]);
            cnseg.getAccesoApp(6004, apps[3]);
            cnseg.getAccesoApp(6005, apps[4]);
            cnseg.getAccesoApp(6006, apps[5]);
            cnseg.getAccesoApp(6007, apps[6]);

            cnseg.getAccesoApp(6101, apps[7]);
            cnseg.getAccesoApp(6102, apps[8]);
            cnseg.getAccesoApp(6103, apps[9]);
            cnseg.getAccesoApp(6104, apps[10]);
            cnseg.getAccesoApp(6105, apps[11]);
            cnseg.getAccesoApp(6106, apps[12]);

            cnseg.getAccesoApp(6201, apps[13]);
            cnseg.getAccesoApp(6202, apps[14]);
            cnseg.getAccesoApp(6203, apps[15]);

            cnseg.getAccesoApp(6301, apps[16]);
            cnseg.getAccesoApp(6401, apps[17]);

        }

        private void customizeDesing()
        {
            panelCatalogos.Visible = false;
            panelProcesos.Visible = false;
            panelReportes.Visible = false;
            panelSeguridad.Visible = false;
            panelAyuda.Visible = false;
        }
        private void hideSubMenu()
        {
            if (panelCatalogos.Visible == true)
                panelCatalogos.Visible = false;
            if (panelProcesos.Visible == true)
                panelProcesos.Visible = false;
            if (panelReportes.Visible == true)
                panelReportes.Visible = false;
            if (panelSeguridad.Visible == true)
                panelSeguridad.Visible = false; 
            if (panelAyuda.Visible == true)
                panelAyuda.Visible = false;
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

        private void btnCatalogos_Click(object sender, EventArgs e)
        {
            showSubMenu(panelCatalogos);
        }

        private void btnProcesos_Click(object sender, EventArgs e)
        {
            showSubMenu(panelProcesos);
        }

        private void btnReportes_Click(object sender, EventArgs e)
        {
            showSubMenu(panelReportes);
        }

        private void btnSeguridad_Click(object sender, EventArgs e)
        {
            showSubMenu(panelSeguridad);
        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {
            showSubMenu(panelAyuda);
        }

        private void btnTrabajadores_Click(object sender, EventArgs e)
        {
            TrabajadoresInfo b = new TrabajadoresInfo();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnPuestos_Click(object sender, EventArgs e)
        {
            PuestosTrabajo b = new PuestosTrabajo();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnDepto_Click(object sender, EventArgs e)
        {
            Departamentos b = new Departamentos();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnContrato_Click(object sender, EventArgs e)
        {
            Contrato b = new Contrato();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnPres_Click(object sender, EventArgs e)
        {
            PrestacionesDeducciones b = new PrestacionesDeducciones();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
          
        }

        private void btnHorasX_Click(object sender, EventArgs e)
        {
            HorasExtra b = new HorasExtra();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
            
        }

        private void btnFaltas_Click_1(object sender, EventArgs e)
        {
            ControlFaltas b = new ControlFaltas();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
            
        }

        private void btnAsPuestoDepto_Click(object sender, EventArgs e)
        {
            AsignacionPuestoDepto b = new AsignacionPuestoDepto();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnAsPuestoTrab_Click(object sender, EventArgs e)
        {
            AsignacionPuestoTrabajador b = new AsignacionPuestoTrabajador();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnAsContratoTrab_Click(object sender, EventArgs e)
        {
            AsignacionContratoTrabajador b = new AsignacionContratoTrabajador();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnAsContratoPres_Click(object sender, EventArgs e)
        {
            AsignacionContratoPestaciones b = new AsignacionContratoPestaciones();
            b.MdiParent = this;
            b.Show();
            pictureBox1.Visible = false;
            hideSubMenu();
        }

        private void btnPercyDeduc_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void btnNomina_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void btnRplanilla_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void btnRcontrato_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void bntRtrabajador_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void btnSegNomina_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void btnInfo_Click(object sender, EventArgs e)
        {
            hideSubMenu();
        }

        private void MenuPrincipal_FormClosing(object sender, FormClosingEventArgs e)
        {
            System.Windows.Forms.Application.Exit();
        }
    }
}
