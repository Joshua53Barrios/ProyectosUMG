
namespace Capa_VistaContabilidad
{
    partial class CierreXCtaConf
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
            this.lbl_ctaname = new System.Windows.Forms.Panel();
            this.btn_cancel = new FontAwesome.Sharp.IconButton();
            this.bnt_savectas = new FontAwesome.Sharp.IconButton();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.txt_dateclose = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txt_namecont = new System.Windows.Forms.TextBox();
            this.txt_codcont = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lbl_namecta = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txt_totact = new System.Windows.Forms.TextBox();
            this.txt_totpas = new System.Windows.Forms.TextBox();
            this.lbl_ctaname.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // lbl_ctaname
            // 
            this.lbl_ctaname.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.lbl_ctaname.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.lbl_ctaname.Controls.Add(this.btn_cancel);
            this.lbl_ctaname.Controls.Add(this.bnt_savectas);
            this.lbl_ctaname.Controls.Add(this.groupBox2);
            this.lbl_ctaname.Controls.Add(this.groupBox1);
            this.lbl_ctaname.Location = new System.Drawing.Point(13, 13);
            this.lbl_ctaname.Name = "lbl_ctaname";
            this.lbl_ctaname.Size = new System.Drawing.Size(612, 246);
            this.lbl_ctaname.TabIndex = 0;
            this.lbl_ctaname.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // btn_cancel
            // 
            this.btn_cancel.IconChar = FontAwesome.Sharp.IconChar.XmarkCircle;
            this.btn_cancel.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(203)))), ((int)(((byte)(50)))), ((int)(((byte)(52)))));
            this.btn_cancel.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btn_cancel.IconSize = 60;
            this.btn_cancel.Location = new System.Drawing.Point(433, 162);
            this.btn_cancel.Name = "btn_cancel";
            this.btn_cancel.Size = new System.Drawing.Size(75, 68);
            this.btn_cancel.TabIndex = 42;
            this.btn_cancel.Text = "Cancelar";
            this.btn_cancel.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_cancel.UseVisualStyleBackColor = true;
            this.btn_cancel.Click += new System.EventHandler(this.btn_cancel_Click);
            // 
            // bnt_savectas
            // 
            this.bnt_savectas.IconChar = FontAwesome.Sharp.IconChar.PlusCircle;
            this.bnt_savectas.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.bnt_savectas.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.bnt_savectas.IconSize = 60;
            this.bnt_savectas.Location = new System.Drawing.Point(514, 162);
            this.bnt_savectas.Name = "bnt_savectas";
            this.bnt_savectas.Size = new System.Drawing.Size(75, 68);
            this.bnt_savectas.TabIndex = 41;
            this.bnt_savectas.Text = "Guardar";
            this.bnt_savectas.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.bnt_savectas.UseVisualStyleBackColor = true;
            this.bnt_savectas.Click += new System.EventHandler(this.bnt_savectas_Click);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Controls.Add(this.label6);
            this.groupBox2.Controls.Add(this.txt_dateclose);
            this.groupBox2.Controls.Add(this.label7);
            this.groupBox2.Controls.Add(this.txt_namecont);
            this.groupBox2.Controls.Add(this.txt_codcont);
            this.groupBox2.Location = new System.Drawing.Point(16, 90);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(573, 53);
            this.groupBox2.TabIndex = 14;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Datos Contador";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(6, 22);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 16);
            this.label4.TabIndex = 7;
            this.label4.Text = "Codigo :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(185, 22);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(63, 16);
            this.label6.TabIndex = 8;
            this.label6.Text = "Nombre :";
            // 
            // txt_dateclose
            // 
            this.txt_dateclose.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_dateclose.Location = new System.Drawing.Point(448, 19);
            this.txt_dateclose.Name = "txt_dateclose";
            this.txt_dateclose.Size = new System.Drawing.Size(100, 22);
            this.txt_dateclose.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(390, 21);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(52, 16);
            this.label7.TabIndex = 9;
            this.label7.Text = "Fecha :";
            // 
            // txt_namecont
            // 
            this.txt_namecont.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_namecont.Location = new System.Drawing.Point(252, 19);
            this.txt_namecont.Name = "txt_namecont";
            this.txt_namecont.Size = new System.Drawing.Size(132, 22);
            this.txt_namecont.TabIndex = 11;
            // 
            // txt_codcont
            // 
            this.txt_codcont.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_codcont.Location = new System.Drawing.Point(70, 18);
            this.txt_codcont.Name = "txt_codcont";
            this.txt_codcont.Size = new System.Drawing.Size(100, 22);
            this.txt_codcont.TabIndex = 10;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.lbl_namecta);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txt_totact);
            this.groupBox1.Controls.Add(this.txt_totpas);
            this.groupBox1.Location = new System.Drawing.Point(16, 26);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(573, 58);
            this.groupBox1.TabIndex = 13;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos Cuenta";
            this.groupBox1.Enter += new System.EventHandler(this.groupBox1_Enter);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(6, 18);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Cuenta :";
            // 
            // lbl_namecta
            // 
            this.lbl_namecta.AutoSize = true;
            this.lbl_namecta.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_namecta.Location = new System.Drawing.Point(68, 18);
            this.lbl_namecta.Name = "lbl_namecta";
            this.lbl_namecta.Size = new System.Drawing.Size(102, 16);
            this.lbl_namecta.TabIndex = 1;
            this.lbl_namecta.Text = "Nombre Cuenta";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(185, 17);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(85, 16);
            this.label3.TabIndex = 2;
            this.label3.Text = "Total Activo :";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(373, 21);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(90, 16);
            this.label5.TabIndex = 4;
            this.label5.Text = "Total Pasivo :";
            // 
            // txt_totact
            // 
            this.txt_totact.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_totact.Location = new System.Drawing.Point(276, 17);
            this.txt_totact.Name = "txt_totact";
            this.txt_totact.ReadOnly = true;
            this.txt_totact.Size = new System.Drawing.Size(79, 22);
            this.txt_totact.TabIndex = 5;
            // 
            // txt_totpas
            // 
            this.txt_totpas.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txt_totpas.Location = new System.Drawing.Point(469, 18);
            this.txt_totpas.Name = "txt_totpas";
            this.txt_totpas.ReadOnly = true;
            this.txt_totpas.Size = new System.Drawing.Size(79, 22);
            this.txt_totpas.TabIndex = 6;
            // 
            // CierreXCtaConf
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ControlLightLight;
            this.ClientSize = new System.Drawing.Size(637, 271);
            this.Controls.Add(this.lbl_ctaname);
            this.Name = "CierreXCtaConf";
            this.Text = "Confirmar Cierre Por Cuentas";
            this.Load += new System.EventHandler(this.CierreXCtaConf_Load);
            this.lbl_ctaname.ResumeLayout(false);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel lbl_ctaname;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox txt_dateclose;
        private System.Windows.Forms.TextBox txt_namecont;
        private System.Windows.Forms.TextBox txt_codcont;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txt_totpas;
        private System.Windows.Forms.TextBox txt_totact;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBox2;
        private FontAwesome.Sharp.IconButton btn_cancel;
        private FontAwesome.Sharp.IconButton bnt_savectas;
        public System.Windows.Forms.Label lbl_namecta;
    }
}