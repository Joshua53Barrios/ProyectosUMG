using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using Vista_Seguridad;

namespace Ejecutador_Mcontabilidad
{
    static class Program
    {
        /// <summary>
        /// Punto de entrada principal para la aplicación.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            //Application.Run(new Capa_VistaContabilidad.Nuevo_MDI());
            Application.Run(new Vista_Seguridad.splash());
        }
    }
}
