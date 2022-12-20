
namespace Capa_VistaContabilidad
{
    partial class MantenimientoTipodeCuentas
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.navegador1 = new NavegadorVista.Navegador();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label6 = new System.Windows.Forms.Label();
            this.textStatus = new System.Windows.Forms.TextBox();
            this.textSerieTipoCuenta = new System.Windows.Forms.TextBox();
            this.textNombreTipoCuenta = new System.Windows.Forms.TextBox();
            this.txtID = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dgvTipoCuenta = new System.Windows.Forms.DataGridView();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTipoCuenta)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.navegador1);
            this.groupBox1.Font = new System.Drawing.Font("Arial Rounded MT Bold", 9F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(18, 16);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(770, 220);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Navegador";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(10, 26);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4, 3, 4, 3);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(759, 173);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.textStatus);
            this.groupBox2.Controls.Add(this.textSerieTipoCuenta);
            this.groupBox2.Controls.Add(this.textNombreTipoCuenta);
            this.groupBox2.Controls.Add(this.txtID);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.label1);
            this.groupBox2.Font = new System.Drawing.Font("Arial Rounded MT Bold", 9F);
            this.groupBox2.Location = new System.Drawing.Point(19, 255);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(358, 161);
            this.groupBox2.TabIndex = 1;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Datos";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Arial Rounded MT Bold", 11.25F);
            this.label6.Location = new System.Drawing.Point(52, 120);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(62, 17);
            this.label6.TabIndex = 26;
            this.label6.Text = "Estatus";
            // 
            // textStatus
            // 
            this.textStatus.Location = new System.Drawing.Point(120, 120);
            this.textStatus.Name = "textStatus";
            this.textStatus.Size = new System.Drawing.Size(100, 21);
            this.textStatus.TabIndex = 25;
            this.textStatus.Tag = "estatus_tipocuenta";
            // 
            // textSerieTipoCuenta
            // 
            this.textSerieTipoCuenta.Location = new System.Drawing.Point(120, 82);
            this.textSerieTipoCuenta.Name = "textSerieTipoCuenta";
            this.textSerieTipoCuenta.Size = new System.Drawing.Size(100, 21);
            this.textSerieTipoCuenta.TabIndex = 20;
            this.textSerieTipoCuenta.Tag = "serie_tipocuenta";
            // 
            // textNombreTipoCuenta
            // 
            this.textNombreTipoCuenta.Location = new System.Drawing.Point(120, 45);
            this.textNombreTipoCuenta.Name = "textNombreTipoCuenta";
            this.textNombreTipoCuenta.Size = new System.Drawing.Size(214, 21);
            this.textNombreTipoCuenta.TabIndex = 19;
            this.textNombreTipoCuenta.Tag = "nombre_tipocuenta";
            // 
            // txtID
            // 
            this.txtID.Location = new System.Drawing.Point(120, 19);
            this.txtID.Name = "txtID";
            this.txtID.Size = new System.Drawing.Size(100, 21);
            this.txtID.TabIndex = 18;
            this.txtID.Tag = "pkid_tipocuenta";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Arial Rounded MT Bold", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(67, 82);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(47, 17);
            this.label3.TabIndex = 17;
            this.label3.Text = "Serie";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Arial Rounded MT Bold", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(48, 45);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(66, 17);
            this.label2.TabIndex = 16;
            this.label2.Text = "Nombre";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Arial Rounded MT Bold", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(48, 19);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(59, 17);
            this.label1.TabIndex = 15;
            this.label1.Text = "Codigo";
            // 
            // dgvTipoCuenta
            // 
            this.dgvTipoCuenta.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvTipoCuenta.Location = new System.Drawing.Point(27, 20);
            this.dgvTipoCuenta.Name = "dgvTipoCuenta";
            this.dgvTipoCuenta.Size = new System.Drawing.Size(648, 148);
            this.dgvTipoCuenta.TabIndex = 27;
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.dgvTipoCuenta);
            this.groupBox3.Font = new System.Drawing.Font("Arial Rounded MT Bold", 9F);
            this.groupBox3.Location = new System.Drawing.Point(28, 432);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(719, 189);
            this.groupBox3.TabIndex = 2;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Detalle";
            // 
            // MantenimientoTipodeCuentas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.ClientSize = new System.Drawing.Size(800, 677);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Name = "MantenimientoTipodeCuentas";
            this.Text = "MantenimientoTipodeCuentas";
            this.Load += new System.EventHandler(this.MantenimientoTipodeCuentas_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvTipoCuenta)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private NavegadorVista.Navegador navegador1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgvTipoCuenta;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textStatus;
        private System.Windows.Forms.TextBox textSerieTipoCuenta;
        private System.Windows.Forms.TextBox textNombreTipoCuenta;
        private System.Windows.Forms.TextBox txtID;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox3;
    }
}