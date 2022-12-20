using System;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
//Jonathan Xuyá 0901-18-11371

namespace Capa_VistaContabilidad
{
    public partial class MantenimientoActivos : Form
    {
        public MantenimientoActivos()
        {
            InitializeComponent();
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void iconButton25_Click(object sender, EventArgs e)
        {
            //// Class1 Conexion = new Class1()
            //String codigo = txtCodigo.Text;
            //MySqlDataReader reader = null;

            //string sql = "SELECT id, codigo, nombre, descripcion, precio_publico, existencias FROM productos WHERE codigo LIKE '" + codigo + "' LIMIT 1";
            ////MySqlConnection conexionBD = Capa_ControladorContabilidad.Class1.conexion(); 
            ////conexionBD.Open();

            //try
            //{
            //    MySqlCommand comando = new MySqlCommand(sql, conexionBD);
            //    reader = comando.ExecuteReader();
            //    if (reader.HasRows)
            //    {
            //        while (reader.Read())
            //        {
            //            txtId.Text = reader.GetString(0);
            //            txtCodigo.Text = reader.GetString(1);
            //            txtNombre.Text = reader.GetString(2);
            //            txtDescripcion.Text = reader.GetString(3);
            //            txtPrecioPublico.Text = reader.GetString(4);
            //            txtExistencias.Text = reader.GetString(5);
            //        }
            //    }
            //    else
            //    {
            //        MessageBox.Show("No se encontraron registros");
            //    }
            //}
            //catch (MySqlException ex)
            //{
            //    MessageBox.Show("Error al buscar " + ex.Message);
            //}
            //finally
            //{
            //    conexionBD.Close();
            //}
        }

        private void iconButton3_Click(object sender, EventArgs e)
        {
            //try
            //{
            //    String codigo = txtCodigo.Text;
            //    String nombre = txtNombre.Text;
            //    String descripcion = txtDescripcion.Text;
            //    double precio_publico = double.Parse(txtPrecioPublico.Text);
            //    int existencias = int.Parse(txtExistencias.Text);

            //    if (codigo != "" && nombre != "" && descripcion != "" && precio_publico > 0 && existencias > 0)
            //    {

            //        string sql = "INSERT INTO productos (codigo, nombre, descripcion, precio_publico, existencias) VALUES ('" + codigo + "', '" + nombre + "','" + descripcion + "','" + precio_publico + "','" + existencias + "')";

            //        MySqlConnection conexionBD = Capa_ControladorContabilidad.Class1.conexion();
            //        conexionBD.Open();

            //        try
            //        {
            //            MySqlCommand comando = new MySqlCommand(sql, conexionBD);
            //            comando.ExecuteNonQuery();
            //            MessageBox.Show("Registro guardado");
            //            limpiar();
            //        }
            //        catch (MySqlException ex)
            //        {
            //            MessageBox.Show("Error al guardar: " + ex.Message);
            //        }
            //        finally
            //        {
            //            conexionBD.Close();
            //        }
            //    }
            //    else
            //    {
            //        MessageBox.Show("Debe completar todos los campos");
            //    }
            //}
            //catch (FormatException fex)
            //{
            //    MessageBox.Show("Datos incorrectos: " + fex.Message);
            //}
        }

        private void iconButton26_Click(object sender, EventArgs e)
        {
            //String id = txtId.Text;
            //String codigo = txtCodigo.Text;
            //String nombre = txtNombre.Text;
            //String descripcion = txtDescripcion.Text;
            //double precio_publico = double.Parse(txtPrecioPublico.Text);
            //int existencias = int.Parse(txtExistencias.Text);

            //string sql = "UPDATE productos SET codigo='" + codigo + "', nombre='" + nombre + "', descripcion='" + descripcion + "', precio_publico='" + precio_publico + "', existencias='" + existencias + "' WHERE id='" + id + "'";

            //MySqlConnection conexionBD = Capa_ControladorContabilidad.Class1.conexion();
            //conexionBD.Open();

            //try
            //{
            //    MySqlCommand comando = new MySqlCommand(sql, conexionBD);
            //    comando.ExecuteNonQuery();
            //    MessageBox.Show("Registro modificado");
            //    limpiar();
            //}
            //catch (MySqlException ex)
            //{
            //    MessageBox.Show("Error al modificar: " + ex.Message);
            //}
            //finally
            //{
            //    conexionBD.Close();
            //}
        }

        private void iconButton12_Click(object sender, EventArgs e)
        {
            //String id = txtId.Text;

            //string sql = "DELETE FROM productos WHERE id='" + id + "'";

            //MySqlConnection conexionBD = Capa_ControladorContabilidad.Class1.conexion();
            //conexionBD.Open();

            //try
            //{
            //    MySqlCommand comando = new MySqlCommand(sql, conexionBD);
            //    comando.ExecuteNonQuery();
            //    MessageBox.Show("Registro eliminado");
            //    limpiar();
            //}
            //catch (MySqlException ex)
            //{
            //    MessageBox.Show("Error al eliminar: " + ex.Message);
            //}
            //finally
            //{
            //    conexionBD.Close();
            //}
        }

        private void btnLimpiar_Click(object sender, EventArgs e)
        {
            limpiar();
        }

        private void limpiar()
        {
     
        }

        private void txtCodigo_TextChanged(object sender, EventArgs e)
        {

        }

        private void panel18_Paint(object sender, PaintEventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            NavegadorVista.Navegador.idApp = "8002";
            TextBox[] Grupotextbox = { txtId ,txtCodigo, txtNombre, txtDescripcion, txtPrecioPublico, txtExistencias };
            TextBox[] Idtextbox = { txtId, txtCodigo };
            navegador1.textbox = Grupotextbox;
            navegador1.tabla = dataGridView1;
            navegador1.textboxi = Idtextbox;
            navegador1.actual = this;
            navegador1.cargar(dataGridView1, Grupotextbox, "colchoneria");
        }

        private void txtCodigo_TextChanged_1(object sender, EventArgs e)
        {

        }

        private void groupBox2_Enter(object sender, EventArgs e)
        {

        }

        private void txtDescripcion_TextChanged(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void txtId_TextChanged(object sender, EventArgs e)
        {

        }
    }
}