
namespace CapaVistaNomina
{
    partial class PuestosTrabajo
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
            this.txtnombrepuesto = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtidpuesto = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridPuestosTrabajo = new System.Windows.Forms.DataGridView();
            this.navegador1 = new NavegadorVista.Navegador();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridPuestosTrabajo)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkSalmon;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1176, 65);
            this.panel1.TabIndex = 1;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI Black", 18F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(13, 0);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(424, 48);
            this.label1.TabIndex = 0;
            this.label1.Text = "PUESTOS DE TRABAJO";
            this.label1.Click += new System.EventHandler(this.label1_Click);
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
            this.panel2.Controls.Add(this.txtnombrepuesto);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.txtidpuesto);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.dataGridPuestosTrabajo);
            this.panel2.Location = new System.Drawing.Point(51, 318);
            this.panel2.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1080, 420);
            this.panel2.TabIndex = 2;
            // 
            // txtestado
            // 
            this.txtestado.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtestado.Location = new System.Drawing.Point(192, 185);
            this.txtestado.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtestado.Name = "txtestado";
            this.txtestado.Size = new System.Drawing.Size(118, 29);
            this.txtestado.TabIndex = 18;
            this.txtestado.Tag = "estado_puesto";
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(96, 185);
            this.checkBox1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(78, 24);
            this.checkBox1.TabIndex = 17;
            this.checkBox1.Text = "Activo";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label8.Location = new System.Drawing.Point(24, 185);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(61, 23);
            this.label8.TabIndex = 16;
            this.label8.Text = "Estado";
            // 
            // txtnombrepuesto
            // 
            this.txtnombrepuesto.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtnombrepuesto.Location = new System.Drawing.Point(24, 111);
            this.txtnombrepuesto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtnombrepuesto.Name = "txtnombrepuesto";
            this.txtnombrepuesto.Size = new System.Drawing.Size(286, 29);
            this.txtnombrepuesto.TabIndex = 15;
            this.txtnombrepuesto.Tag = "nombre_puesto";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label3.Location = new System.Drawing.Point(24, 86);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(156, 23);
            this.label3.TabIndex = 10;
            this.label3.Text = "Nombre De Puesto";
            // 
            // txtidpuesto
            // 
            this.txtidpuesto.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtidpuesto.Location = new System.Drawing.Point(24, 38);
            this.txtidpuesto.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtidpuesto.Name = "txtidpuesto";
            this.txtidpuesto.Size = new System.Drawing.Size(286, 29);
            this.txtidpuesto.TabIndex = 5;
            this.txtidpuesto.Tag = "pk_id_puesto";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label2.Location = new System.Drawing.Point(24, 12);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(169, 23);
            this.label2.TabIndex = 4;
            this.label2.Text = "ID Puesto de Trabajo";
            // 
            // dataGridPuestosTrabajo
            // 
            this.dataGridPuestosTrabajo.AllowUserToAddRows = false;
            this.dataGridPuestosTrabajo.AllowUserToDeleteRows = false;
            this.dataGridPuestosTrabajo.AllowUserToResizeColumns = false;
            this.dataGridPuestosTrabajo.AllowUserToResizeRows = false;
            this.dataGridPuestosTrabajo.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.dataGridPuestosTrabajo.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridPuestosTrabajo.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridPuestosTrabajo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridPuestosTrabajo.Location = new System.Drawing.Point(360, 25);
            this.dataGridPuestosTrabajo.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.dataGridPuestosTrabajo.MultiSelect = false;
            this.dataGridPuestosTrabajo.Name = "dataGridPuestosTrabajo";
            this.dataGridPuestosTrabajo.ReadOnly = true;
            this.dataGridPuestosTrabajo.RowHeadersVisible = false;
            this.dataGridPuestosTrabajo.RowHeadersWidth = 51;
            this.dataGridPuestosTrabajo.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dataGridPuestosTrabajo.ShowEditingIcon = false;
            this.dataGridPuestosTrabajo.Size = new System.Drawing.Size(696, 384);
            this.dataGridPuestosTrabajo.TabIndex = 0;
            this.dataGridPuestosTrabajo.Tag = "tbl_puestosdetrabajo";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(144, 75);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(861, 234);
            this.navegador1.TabIndex = 3;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // PuestosTrabajo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1176, 759);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.Name = "PuestosTrabajo";
            this.Text = "PuestosTrabajo";
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridPuestosTrabajo)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.TextBox txtestado;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtnombrepuesto;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtidpuesto;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridPuestosTrabajo;
        private NavegadorVista.Navegador navegador1;
    }
}