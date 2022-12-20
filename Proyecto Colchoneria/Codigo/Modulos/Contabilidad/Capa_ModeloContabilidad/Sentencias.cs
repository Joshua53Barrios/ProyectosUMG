using System;
using System.Collections.Generic;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Capa_ModeloContabilidad
{
    public class Sentencias
    {
        Conexion con = new Conexion();
        public OdbcDataAdapter llenarcomboproducto( string tabla)
        {
            string sql = "select  *  from " + tabla + " ;";
            OdbcDataAdapter datatable = new OdbcDataAdapter(sql, con.conexion());

            return datatable;
        }

    }
}
