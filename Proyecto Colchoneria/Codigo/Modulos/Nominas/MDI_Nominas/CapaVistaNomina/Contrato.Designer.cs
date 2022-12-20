
namespace CapaVistaNomina
{
    partial class Contrato
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.txtestado = new System.Windows.Forms.TextBox();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtTipodePago = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txthorasMensuales = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txtTipoJornada = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.txtsalario = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIDcontrato = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridContrato = new System.Windows.Forms.DataGridView();
            this.navegador1 = new NavegadorVista.Navegador();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridContrato)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkSalmon;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(784, 56);
            this.panel1.TabIndex = 5;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI Black", 18F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(16, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(149, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "CONTRATO";
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.txtestado);
            this.panel2.Controls.Add(this.checkBox1);
            this.panel2.Controls.Add(this.label8);
            this.panel2.Controls.Add(this.txtTipodePago);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txthorasMensuales);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.txtTipoJornada);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.txtsalario);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.txtIDcontrato);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.dataGridContrato);
            this.panel2.Location = new System.Drawing.Point(35, 240);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(720, 338);
            this.panel2.TabIndex = 6;
            // 
            // txtestado
            // 
            this.txtestado.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtestado.Location = new System.Drawing.Point(128, 262);
            this.txtestado.Name = "txtestado";
            this.txtestado.Size = new System.Drawing.Size(80, 22);
            this.txtestado.TabIndex = 18;
            this.txtestado.Tag = "estado_contrato";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(64, 262);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(56, 17);
            this.checkBox1.TabIndex = 17;
            this.checkBox1.Text = "Activo";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label8.Location = new System.Drawing.Point(16, 262);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(42, 13);
            this.label8.TabIndex = 16;
            this.label8.Text = "Estado";
            // 
            // txtTipodePago
            // 
            this.txtTipodePago.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtTipodePago.Location = new System.Drawing.Point(16, 216);
            this.txtTipodePago.Name = "txtTipodePago";
            this.txtTipodePago.Size = new System.Drawing.Size(192, 22);
            this.txtTipodePago.TabIndex = 12;
            this.txtTipodePago.Tag = "tipoPago_contrato";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label6.Location = new System.Drawing.Point(16, 200);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(76, 13);
            this.label6.TabIndex = 7;
            this.label6.Tag = "";
            this.label6.Text = "Tipo De Pago";
            // 
            // txthorasMensuales
            // 
            this.txthorasMensuales.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txthorasMensuales.Location = new System.Drawing.Point(16, 168);
            this.txthorasMensuales.Name = "txthorasMensuales";
            this.txthorasMensuales.Size = new System.Drawing.Size(192, 22);
            this.txthorasMensuales.TabIndex = 13;
            this.txthorasMensuales.Tag = "cantdidadHorasMensuales_contrato";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label5.Location = new System.Drawing.Point(16, 152);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(95, 13);
            this.label5.TabIndex = 8;
            this.label5.Tag = "";
            this.label5.Text = "Horas Mensuales";
            // 
            // txtTipoJornada
            // 
            this.txtTipoJornada.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtTipoJornada.Location = new System.Drawing.Point(16, 120);
            this.txtTipoJornada.Name = "txtTipoJornada";
            this.txtTipoJornada.Size = new System.Drawing.Size(192, 22);
            this.txtTipoJornada.TabIndex = 14;
            this.txtTipoJornada.Tag = "tipoJornada_contrato";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label4.Location = new System.Drawing.Point(16, 104);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(91, 13);
            this.label4.TabIndex = 9;
            this.label4.Tag = "";
            this.label4.Text = "Tipo De Jornada";
            // 
            // txtsalario
            // 
            this.txtsalario.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtsalario.Location = new System.Drawing.Point(16, 72);
            this.txtsalario.Name = "txtsalario";
            this.txtsalario.Size = new System.Drawing.Size(192, 22);
            this.txtsalario.TabIndex = 15;
            this.txtsalario.Tag = "salario_contrato";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label3.Location = new System.Drawing.Point(16, 56);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(111, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "Salario Del Contrato";
            // 
            // txtIDcontrato
            // 
            this.txtIDcontrato.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtIDcontrato.Location = new System.Drawing.Point(16, 24);
            this.txtIDcontrato.Name = "txtIDcontrato";
            this.txtIDcontrato.Size = new System.Drawing.Size(192, 22);
            this.txtIDcontrato.TabIndex = 5;
            this.txtIDcontrato.Tag = "pk_id_contrato";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label2.Location = new System.Drawing.Point(16, 8);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(67, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "ID Contrato";
            // 
            // dataGridContrato
            // 
            this.dataGridContrato.AllowUserToAddRows = false;
            this.dataGridContrato.AllowUserToDeleteRows = false;
            this.dataGridContrato.AllowUserToResizeColumns = false;
            this.dataGridContrato.AllowUserToResizeRows = false;
            this.dataGridContrato.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridContrato.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridContrato.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridContrato.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridContrato.Location = new System.Drawing.Point(240, 16);
            this.dataGridContrato.MultiSelect = false;
            this.dataGridContrato.Name = "dataGridContrato";
            this.dataGridContrato.ReadOnly = true;
            this.dataGridContrato.RowHeadersVisible = false;
            this.dataGridContrato.RowHeadersWidth = 51;
            this.dataGridContrato.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dataGridContrato.ShowEditingIcon = false;
            this.dataGridContrato.Size = new System.Drawing.Size(464, 315);
            this.dataGridContrato.TabIndex = 0;
            this.dataGridContrato.Tag = "tbl_contrato";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(96, 72);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(574, 152);
            this.navegador1.TabIndex = 7;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // Contrato
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(784, 589);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "Contrato";
            this.Text = "Contrato";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridContrato)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtestado;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtTipodePago;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txthorasMensuales;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtTipoJornada;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtsalario;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtIDcontrato;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridContrato;
        private NavegadorVista.Navegador navegador1;
    }
}