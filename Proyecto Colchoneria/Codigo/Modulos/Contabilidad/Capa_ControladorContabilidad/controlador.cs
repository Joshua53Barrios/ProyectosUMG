using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Capa_ModeloContabilidad;

namespace Capa_ControladorContabilidad
{
   public class controlador
    {
        Sentencias sn=new Sentencias();

        public void llenarcombo( string tabla, ComboBox combo, int posicion)
        {
            
            try
            {
                                               
                OdbcDataAdapter dt = sn.llenarcomboproducto(tabla);
                DataTable table = new DataTable();
                dt.Fill(table);

                int contador = 0;
                combo.Items.Clear();

                foreach (DataRow row in table.Rows)
                {

                    combo.Items.Add(table.Rows[contador][posicion].ToString());
                    contador++;
                }

            }
            catch (Exception e)
            {
                MessageBox.Show(" " + e);
            }
        }
    }
}
