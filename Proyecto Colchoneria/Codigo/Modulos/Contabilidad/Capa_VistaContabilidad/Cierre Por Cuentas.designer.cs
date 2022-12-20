
namespace Capa_VistaContabilidad
{
    partial class Cierre_Por_Cuentas
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
            this.btn_seleccionarcta = new FontAwesome.Sharp.IconButton();
            this.dgv_ctas = new System.Windows.Forms.DataGridView();
            this.Cuentas = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.bnt_closecta = new FontAwesome.Sharp.IconButton();
            this.chckbox_auto = new System.Windows.Forms.CheckBox();
            this.groupBoxA = new System.Windows.Forms.GroupBox();
            this.groupBox5 = new System.Windows.Forms.GroupBox();
            this.bnt_aceptpass = new FontAwesome.Sharp.IconButton();
            this.txt_totpas = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.groupBox6 = new System.Windows.Forms.GroupBox();
            this.bnt_aceptact = new FontAwesome.Sharp.IconButton();
            this.txt_totact = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.groupBoxM = new System.Windows.Forms.GroupBox();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.bnt_addpassman = new FontAwesome.Sharp.IconButton();
            this.txt_montopas = new System.Windows.Forms.TextBox();
            this.txt_razonpas = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.btn_addactman = new FontAwesome.Sharp.IconButton();
            this.txt_montoact = new System.Windows.Forms.TextBox();
            this.txt_razonact = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.chckbox_manual = new System.Windows.Forms.CheckBox();
            this.lbl_cta = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.dateTimePicker2 = new System.Windows.Forms.DateTimePicker();
            this.label9 = new System.Windows.Forms.Label();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_ctas)).BeginInit();
            this.panel2.SuspendLayout();
            this.groupBoxA.SuspendLayout();
            this.groupBox5.SuspendLayout();
            this.groupBox6.SuspendLayout();
            this.groupBoxM.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.btn_seleccionarcta);
            this.panel1.Controls.Add(this.dgv_ctas);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Left;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(213, 531);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // btn_seleccionarcta
            // 
            this.btn_seleccionarcta.IconChar = FontAwesome.Sharp.IconChar.Check;
            this.btn_seleccionarcta.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.btn_seleccionarcta.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btn_seleccionarcta.IconSize = 60;
            this.btn_seleccionarcta.Location = new System.Drawing.Point(67, 450);
            this.btn_seleccionarcta.Name = "btn_seleccionarcta";
            this.btn_seleccionarcta.Size = new System.Drawing.Size(75, 68);
            this.btn_seleccionarcta.TabIndex = 33;
            this.btn_seleccionarcta.Text = "Seleccionar";
            this.btn_seleccionarcta.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_seleccionarcta.UseVisualStyleBackColor = true;
            this.btn_seleccionarcta.Click += new System.EventHandler(this.btn_seleccionarcta_Click);
            // 
            // dgv_ctas
            // 
            this.dgv_ctas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_ctas.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Cuentas});
            this.dgv_ctas.Location = new System.Drawing.Point(12, 80);
            this.dgv_ctas.Name = "dgv_ctas";
            this.dgv_ctas.Size = new System.Drawing.Size(181, 346);
            this.dgv_ctas.TabIndex = 1;
            // 
            // Cuentas
            // 
            this.Cuentas.HeaderText = "Column1";
            this.Cuentas.Name = "Cuentas";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(6, 30);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(187, 24);
            this.label1.TabIndex = 0;
            this.label1.Text = "Seleccione Cuenta";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel2.Controls.Add(this.bnt_closecta);
            this.panel2.Controls.Add(this.chckbox_auto);
            this.panel2.Controls.Add(this.groupBoxA);
            this.panel2.Controls.Add(this.groupBoxM);
            this.panel2.Controls.Add(this.chckbox_manual);
            this.panel2.Controls.Add(this.lbl_cta);
            this.panel2.Controls.Add(this.label2);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(213, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(679, 531);
            this.panel2.TabIndex = 1;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // bnt_closecta
            // 
            this.bnt_closecta.IconChar = FontAwesome.Sharp.IconChar.Lock;
            this.bnt_closecta.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.bnt_closecta.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.bnt_closecta.IconSize = 40;
            this.bnt_closecta.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.bnt_closecta.Location = new System.Drawing.Point(333, 458);
            this.bnt_closecta.Name = "bnt_closecta";
            this.bnt_closecta.Size = new System.Drawing.Size(75, 68);
            this.bnt_closecta.TabIndex = 34;
            this.bnt_closecta.Text = "Cerrar Cuenta";
            this.bnt_closecta.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.bnt_closecta.UseVisualStyleBackColor = true;
            this.bnt_closecta.Click += new System.EventHandler(this.bnt_closecta_Click);
            // 
            // chckbox_auto
            // 
            this.chckbox_auto.AutoSize = true;
            this.chckbox_auto.Location = new System.Drawing.Point(386, 80);
            this.chckbox_auto.Name = "chckbox_auto";
            this.chckbox_auto.Size = new System.Drawing.Size(109, 17);
            this.chckbox_auto.TabIndex = 7;
            this.chckbox_auto.Text = "Cierre Automatico";
            this.chckbox_auto.UseVisualStyleBackColor = true;
            this.chckbox_auto.CheckedChanged += new System.EventHandler(this.chckbox_auto_CheckedChanged);
            // 
            // groupBoxA
            // 
            this.groupBoxA.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.groupBoxA.Controls.Add(this.groupBox5);
            this.groupBoxA.Controls.Add(this.groupBox6);
            this.groupBoxA.Location = new System.Drawing.Point(386, 103);
            this.groupBoxA.Name = "groupBoxA";
            this.groupBoxA.Size = new System.Drawing.Size(264, 351);
            this.groupBoxA.TabIndex = 6;
            this.groupBoxA.TabStop = false;
            this.groupBoxA.Text = "Cierre Automatico";
            // 
            // groupBox5
            // 
            this.groupBox5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.groupBox5.Controls.Add(this.bnt_aceptpass);
            this.groupBox5.Controls.Add(this.txt_totpas);
            this.groupBox5.Controls.Add(this.label8);
            this.groupBox5.Location = new System.Drawing.Point(7, 184);
            this.groupBox5.Name = "groupBox5";
            this.groupBox5.Size = new System.Drawing.Size(251, 159);
            this.groupBox5.TabIndex = 5;
            this.groupBox5.TabStop = false;
            this.groupBox5.Text = "Pasivos";
            // 
            // bnt_aceptpass
            // 
            this.bnt_aceptpass.IconChar = FontAwesome.Sharp.IconChar.CheckSquare;
            this.bnt_aceptpass.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.bnt_aceptpass.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.bnt_aceptpass.IconSize = 60;
            this.bnt_aceptpass.Location = new System.Drawing.Point(163, 63);
            this.bnt_aceptpass.Name = "bnt_aceptpass";
            this.bnt_aceptpass.Size = new System.Drawing.Size(75, 68);
            this.bnt_aceptpass.TabIndex = 35;
            this.bnt_aceptpass.Text = "Aceptar";
            this.bnt_aceptpass.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.bnt_aceptpass.UseVisualStyleBackColor = true;
            // 
            // txt_totpas
            // 
            this.txt_totpas.Location = new System.Drawing.Point(103, 31);
            this.txt_totpas.Name = "txt_totpas";
            this.txt_totpas.ReadOnly = true;
            this.txt_totpas.Size = new System.Drawing.Size(135, 20);
            this.txt_totpas.TabIndex = 34;
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(12, 35);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(85, 16);
            this.label8.TabIndex = 33;
            this.label8.Text = "Monto Total :";
            // 
            // groupBox6
            // 
            this.groupBox6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.groupBox6.Controls.Add(this.bnt_aceptact);
            this.groupBox6.Controls.Add(this.txt_totact);
            this.groupBox6.Controls.Add(this.label11);
            this.groupBox6.Location = new System.Drawing.Point(7, 19);
            this.groupBox6.Name = "groupBox6";
            this.groupBox6.Size = new System.Drawing.Size(251, 153);
            this.groupBox6.TabIndex = 0;
            this.groupBox6.TabStop = false;
            this.groupBox6.Text = "Activos";
            // 
            // bnt_aceptact
            // 
            this.bnt_aceptact.IconChar = FontAwesome.Sharp.IconChar.CheckSquare;
            this.bnt_aceptact.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.bnt_aceptact.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.bnt_aceptact.IconSize = 60;
            this.bnt_aceptact.Location = new System.Drawing.Point(163, 63);
            this.bnt_aceptact.Name = "bnt_aceptact";
            this.bnt_aceptact.Size = new System.Drawing.Size(75, 68);
            this.bnt_aceptact.TabIndex = 32;
            this.bnt_aceptact.Text = "Aceptar";
            this.bnt_aceptact.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.bnt_aceptact.UseVisualStyleBackColor = true;
            this.bnt_aceptact.Click += new System.EventHandler(this.bnt_aceptact_Click);
            // 
            // txt_totact
            // 
            this.txt_totact.Location = new System.Drawing.Point(97, 28);
            this.txt_totact.Name = "txt_totact";
            this.txt_totact.ReadOnly = true;
            this.txt_totact.Size = new System.Drawing.Size(135, 20);
            this.txt_totact.TabIndex = 2;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(6, 32);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(85, 16);
            this.label11.TabIndex = 0;
            this.label11.Text = "Monto Total :";
            // 
            // groupBoxM
            // 
            this.groupBoxM.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.groupBoxM.Controls.Add(this.groupBox3);
            this.groupBoxM.Controls.Add(this.groupBox2);
            this.groupBoxM.Location = new System.Drawing.Point(42, 103);
            this.groupBoxM.Name = "groupBoxM";
            this.groupBoxM.Size = new System.Drawing.Size(309, 351);
            this.groupBoxM.TabIndex = 3;
            this.groupBoxM.TabStop = false;
            this.groupBoxM.Text = "Cierre Manual";
            // 
            // groupBox3
            // 
            this.groupBox3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.groupBox3.Controls.Add(this.label9);
            this.groupBox3.Controls.Add(this.dateTimePicker2);
            this.groupBox3.Controls.Add(this.bnt_addpassman);
            this.groupBox3.Controls.Add(this.txt_montopas);
            this.groupBox3.Controls.Add(this.txt_razonpas);
            this.groupBox3.Controls.Add(this.label6);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Location = new System.Drawing.Point(7, 184);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(296, 159);
            this.groupBox3.TabIndex = 5;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Pasivos";
            // 
            // bnt_addpassman
            // 
            this.bnt_addpassman.IconChar = FontAwesome.Sharp.IconChar.PlusCircle;
            this.bnt_addpassman.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.bnt_addpassman.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.bnt_addpassman.IconSize = 60;
            this.bnt_addpassman.Location = new System.Drawing.Point(215, 85);
            this.bnt_addpassman.Name = "bnt_addpassman";
            this.bnt_addpassman.Size = new System.Drawing.Size(75, 68);
            this.bnt_addpassman.TabIndex = 33;
            this.bnt_addpassman.Text = "Agregar";
            this.bnt_addpassman.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.bnt_addpassman.UseVisualStyleBackColor = true;
            this.bnt_addpassman.Click += new System.EventHandler(this.bnt_addpassman_Click);
            // 
            // txt_montopas
            // 
            this.txt_montopas.Location = new System.Drawing.Point(89, 59);
            this.txt_montopas.Name = "txt_montopas";
            this.txt_montopas.Size = new System.Drawing.Size(135, 20);
            this.txt_montopas.TabIndex = 3;
            // 
            // txt_razonpas
            // 
            this.txt_razonpas.Location = new System.Drawing.Point(89, 27);
            this.txt_razonpas.Name = "txt_razonpas";
            this.txt_razonpas.Size = new System.Drawing.Size(135, 20);
            this.txt_razonpas.TabIndex = 2;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(8, 63);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(51, 16);
            this.label6.TabIndex = 1;
            this.label6.Text = "Monto :";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(6, 32);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(53, 16);
            this.label7.TabIndex = 0;
            this.label7.Text = "Razon :";
            // 
            // groupBox2
            // 
            this.groupBox2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(232)))), ((int)(((byte)(247)))), ((int)(((byte)(253)))));
            this.groupBox2.Controls.Add(this.dateTimePicker1);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.btn_addactman);
            this.groupBox2.Controls.Add(this.txt_montoact);
            this.groupBox2.Controls.Add(this.txt_razonact);
            this.groupBox2.Controls.Add(this.label5);
            this.groupBox2.Controls.Add(this.label4);
            this.groupBox2.Location = new System.Drawing.Point(7, 19);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(296, 159);
            this.groupBox2.TabIndex = 0;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Activos";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker1.Location = new System.Drawing.Point(89, 90);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(107, 20);
            this.dateTimePicker1.TabIndex = 37;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(8, 90);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(52, 16);
            this.label3.TabIndex = 34;
            this.label3.Text = "Fecha :";
            // 
            // btn_addactman
            // 
            this.btn_addactman.IconChar = FontAwesome.Sharp.IconChar.PlusCircle;
            this.btn_addactman.IconColor = System.Drawing.Color.FromArgb(((int)(((byte)(123)))), ((int)(((byte)(180)))), ((int)(((byte)(227)))));
            this.btn_addactman.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.btn_addactman.IconSize = 60;
            this.btn_addactman.Location = new System.Drawing.Point(215, 85);
            this.btn_addactman.Name = "btn_addactman";
            this.btn_addactman.Size = new System.Drawing.Size(75, 68);
            this.btn_addactman.TabIndex = 32;
            this.btn_addactman.Text = "Agregar";
            this.btn_addactman.TextAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btn_addactman.UseVisualStyleBackColor = true;
            this.btn_addactman.Click += new System.EventHandler(this.btn_addactman_Click);
            // 
            // txt_montoact
            // 
            this.txt_montoact.Location = new System.Drawing.Point(89, 59);
            this.txt_montoact.Name = "txt_montoact";
            this.txt_montoact.Size = new System.Drawing.Size(135, 20);
            this.txt_montoact.TabIndex = 3;
            // 
            // txt_razonact
            // 
            this.txt_razonact.Location = new System.Drawing.Point(89, 27);
            this.txt_razonact.Name = "txt_razonact";
            this.txt_razonact.Size = new System.Drawing.Size(135, 20);
            this.txt_razonact.TabIndex = 2;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.Location = new System.Drawing.Point(8, 63);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(51, 16);
            this.label5.TabIndex = 1;
            this.label5.Text = "Monto :";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(6, 32);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(53, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Razon :";
            // 
            // chckbox_manual
            // 
            this.chckbox_manual.AutoSize = true;
            this.chckbox_manual.Location = new System.Drawing.Point(42, 80);
            this.chckbox_manual.Name = "chckbox_manual";
            this.chckbox_manual.Size = new System.Drawing.Size(91, 17);
            this.chckbox_manual.TabIndex = 2;
            this.chckbox_manual.Text = "Cierre Manual";
            this.chckbox_manual.UseVisualStyleBackColor = true;
            this.chckbox_manual.CheckedChanged += new System.EventHandler(this.chckbox_manual_CheckedChanged);
            // 
            // lbl_cta
            // 
            this.lbl_cta.AutoSize = true;
            this.lbl_cta.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_cta.Location = new System.Drawing.Point(351, 30);
            this.lbl_cta.Name = "lbl_cta";
            this.lbl_cta.Size = new System.Drawing.Size(157, 24);
            this.lbl_cta.TabIndex = 1;
            this.lbl_cta.Text = "Nombre Cuenta";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(218, 30);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(88, 24);
            this.label2.TabIndex = 0;
            this.label2.Text = "Cuenta :";
            // 
            // dateTimePicker2
            // 
            this.dateTimePicker2.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker2.Location = new System.Drawing.Point(89, 85);
            this.dateTimePicker2.Name = "dateTimePicker2";
            this.dateTimePicker2.Size = new System.Drawing.Size(107, 20);
            this.dateTimePicker2.TabIndex = 38;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(8, 89);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(52, 16);
            this.label9.TabIndex = 39;
            this.label9.Text = "Fecha :";
            // 
            // Cierre_Por_Cuentas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(892, 531);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "Cierre_Por_Cuentas";
            this.Text = "Cierre Por Cuentas";
            this.Load += new System.EventHandler(this.Cierre_Por_Cuentas_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_ctas)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.groupBoxA.ResumeLayout(false);
            this.groupBox5.ResumeLayout(false);
            this.groupBox5.PerformLayout();
            this.groupBox6.ResumeLayout(false);
            this.groupBox6.PerformLayout();
            this.groupBoxM.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.DataGridView dgv_ctas;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label lbl_cta;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.CheckBox chckbox_auto;
        private System.Windows.Forms.GroupBox groupBoxA;
        private System.Windows.Forms.GroupBox groupBox5;
        private System.Windows.Forms.GroupBox groupBox6;
        private System.Windows.Forms.TextBox txt_totact;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.GroupBox groupBoxM;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.TextBox txt_montopas;
        private System.Windows.Forms.TextBox txt_razonpas;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.TextBox txt_montoact;
        private System.Windows.Forms.TextBox txt_razonact;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.CheckBox chckbox_manual;
        private FontAwesome.Sharp.IconButton bnt_aceptact;
        private System.Windows.Forms.TextBox txt_totpas;
        private System.Windows.Forms.Label label8;
        private FontAwesome.Sharp.IconButton btn_addactman;
        private FontAwesome.Sharp.IconButton btn_seleccionarcta;
        private FontAwesome.Sharp.IconButton bnt_aceptpass;
        private FontAwesome.Sharp.IconButton bnt_addpassman;
        private FontAwesome.Sharp.IconButton bnt_closecta;
        private System.Windows.Forms.DataGridViewTextBoxColumn Cuentas;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.DateTimePicker dateTimePicker2;
    }
}