
namespace CapaVistaNomina
{
    partial class ControlFaltas
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
            this.panel3 = new System.Windows.Forms.Panel();
            this.ListaDatos = new System.Windows.Forms.DataGridView();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.txtjustificacion = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtmesalta = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtIdEmpleado = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txtIdFaltas = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.dataGridFaltas = new System.Windows.Forms.DataGridView();
            this.txtFechaAlta = new System.Windows.Forms.TextBox();
            this.navegador1 = new NavegadorVista.Navegador();
            this.panel3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.ListaDatos)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridFaltas)).BeginInit();
            this.SuspendLayout();
            // 
            // panel3
            // 
            this.panel3.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel3.BackColor = System.Drawing.Color.White;
            this.panel3.Controls.Add(this.ListaDatos);
            this.panel3.Location = new System.Drawing.Point(576, 240);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(330, 399);
            this.panel3.TabIndex = 10;
            // 
            // ListaDatos
            // 
            this.ListaDatos.AllowUserToAddRows = false;
            this.ListaDatos.AllowUserToDeleteRows = false;
            this.ListaDatos.AllowUserToResizeColumns = false;
            this.ListaDatos.AllowUserToResizeRows = false;
            this.ListaDatos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.ListaDatos.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.ListaDatos.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.ListaDatos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.ListaDatos.Location = new System.Drawing.Point(16, 16);
            this.ListaDatos.MultiSelect = false;
            this.ListaDatos.Name = "ListaDatos";
            this.ListaDatos.ReadOnly = true;
            this.ListaDatos.RowHeadersVisible = false;
            this.ListaDatos.RowHeadersWidth = 51;
            this.ListaDatos.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.ListaDatos.ShowEditingIcon = false;
            this.ListaDatos.Size = new System.Drawing.Size(296, 360);
            this.ListaDatos.TabIndex = 0;
            this.ListaDatos.Tag = "tbl_trabajador";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkSalmon;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(911, 56);
            this.panel1.TabIndex = 8;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Segoe UI Black", 18F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Underline))));
            this.label1.Location = new System.Drawing.Point(16, 16);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(215, 32);
            this.label1.TabIndex = 0;
            this.label1.Text = "Control De Faltas";
            // 
            // panel2
            // 
            this.panel2.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.Controls.Add(this.txtFechaAlta);
            this.panel2.Controls.Add(this.dateTimePicker1);
            this.panel2.Controls.Add(this.txtjustificacion);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Controls.Add(this.txtmesalta);
            this.panel2.Controls.Add(this.label5);
            this.panel2.Controls.Add(this.label4);
            this.panel2.Controls.Add(this.txtIdEmpleado);
            this.panel2.Controls.Add(this.label3);
            this.panel2.Controls.Add(this.txtIdFaltas);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Controls.Add(this.dataGridFaltas);
            this.panel2.Location = new System.Drawing.Point(10, 240);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(549, 398);
            this.panel2.TabIndex = 11;
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Location = new System.Drawing.Point(16, 123);
            this.dateTimePicker1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(192, 20);
            this.dateTimePicker1.TabIndex = 19;
            this.dateTimePicker1.Tag = "fecha_falta";
            // 
            // txtjustificacion
            // 
            this.txtjustificacion.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtjustificacion.Location = new System.Drawing.Point(16, 240);
            this.txtjustificacion.Name = "txtjustificacion";
            this.txtjustificacion.Size = new System.Drawing.Size(192, 22);
            this.txtjustificacion.TabIndex = 12;
            this.txtjustificacion.Tag = "justificacion_falta";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label6.Location = new System.Drawing.Point(16, 224);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(115, 13);
            this.label6.TabIndex = 7;
            this.label6.Tag = "";
            this.label6.Text = "Justificacion De Falta";
            // 
            // txtmesalta
            // 
            this.txtmesalta.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtmesalta.Location = new System.Drawing.Point(16, 192);
            this.txtmesalta.Name = "txtmesalta";
            this.txtmesalta.Size = new System.Drawing.Size(192, 22);
            this.txtmesalta.TabIndex = 13;
            this.txtmesalta.Tag = "mes_falta";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label5.Location = new System.Drawing.Point(16, 176);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(73, 13);
            this.label5.TabIndex = 8;
            this.label5.Tag = "";
            this.label5.Text = "Mes De Falta";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label4.Location = new System.Drawing.Point(16, 104);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(82, 13);
            this.label4.TabIndex = 9;
            this.label4.Tag = "";
            this.label4.Text = "Fecha De Falta";
            // 
            // txtIdEmpleado
            // 
            this.txtIdEmpleado.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtIdEmpleado.Location = new System.Drawing.Point(16, 72);
            this.txtIdEmpleado.Name = "txtIdEmpleado";
            this.txtIdEmpleado.Size = new System.Drawing.Size(192, 22);
            this.txtIdEmpleado.TabIndex = 15;
            this.txtIdEmpleado.Tag = "fk_clave_empleado";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label3.Location = new System.Drawing.Point(16, 56);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(72, 13);
            this.label3.TabIndex = 10;
            this.label3.Text = "ID Empleado";
            // 
            // txtIdFaltas
            // 
            this.txtIdFaltas.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.txtIdFaltas.Location = new System.Drawing.Point(16, 24);
            this.txtIdFaltas.Name = "txtIdFaltas";
            this.txtIdFaltas.Size = new System.Drawing.Size(192, 22);
            this.txtIdFaltas.TabIndex = 5;
            this.txtIdFaltas.Tag = "pk_id_faltas";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Segoe UI", 8.25F);
            this.label2.Location = new System.Drawing.Point(16, 8);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(51, 13);
            this.label2.TabIndex = 4;
            this.label2.Text = "ID Faltas";
            // 
            // dataGridFaltas
            // 
            this.dataGridFaltas.AllowUserToAddRows = false;
            this.dataGridFaltas.AllowUserToDeleteRows = false;
            this.dataGridFaltas.AllowUserToResizeColumns = false;
            this.dataGridFaltas.AllowUserToResizeRows = false;
            this.dataGridFaltas.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left)));
            this.dataGridFaltas.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridFaltas.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridFaltas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridFaltas.Location = new System.Drawing.Point(216, 16);
            this.dataGridFaltas.MultiSelect = false;
            this.dataGridFaltas.Name = "dataGridFaltas";
            this.dataGridFaltas.ReadOnly = true;
            this.dataGridFaltas.RowHeadersVisible = false;
            this.dataGridFaltas.RowHeadersWidth = 51;
            this.dataGridFaltas.RowHeadersWidthSizeMode = System.Windows.Forms.DataGridViewRowHeadersWidthSizeMode.DisableResizing;
            this.dataGridFaltas.ShowEditingIcon = false;
            this.dataGridFaltas.Size = new System.Drawing.Size(321, 362);
            this.dataGridFaltas.TabIndex = 0;
            this.dataGridFaltas.Tag = "tbl_controlfaltas";
            // 
            // txtFechaAlta
            // 
            this.txtFechaAlta.Location = new System.Drawing.Point(16, 152);
            this.txtFechaAlta.Name = "txtFechaAlta";
            this.txtFechaAlta.Size = new System.Drawing.Size(192, 20);
            this.txtFechaAlta.TabIndex = 20;
            this.txtFechaAlta.Tag = "fecha_falta";
            // 
            // navegador1
            // 
            this.navegador1.Location = new System.Drawing.Point(160, 72);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(574, 152);
            this.navegador1.TabIndex = 12;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // ControlFaltas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(911, 641);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel3);
            this.Controls.Add(this.panel1);
            this.Name = "ControlFaltas";
            this.Text = "ControlFaltas";
            this.Load += new System.EventHandler(this.ControlFaltas_Load);
            this.panel3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.ListaDatos)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridFaltas)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel3;
        private System.Windows.Forms.DataGridView ListaDatos;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.TextBox txtjustificacion;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtmesalta;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtIdEmpleado;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtIdFaltas;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.DataGridView dataGridFaltas;
        private NavegadorVista.Navegador navegador1;
        private System.Windows.Forms.TextBox txtFechaAlta;
    }
}