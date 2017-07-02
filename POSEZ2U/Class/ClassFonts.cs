using System.Text;
using System.Windows.Forms;
using System.IO;
using System.Reflection;
using System.Runtime.InteropServices;
using System.Drawing.Text;
using System.Drawing;

namespace POSEZ2U.Class
{
  public  class ClassFonts
    {
      public void ReadFont(Form frm)
      {
          PrivateFontCollection pfc = new PrivateFontCollection();

          pfc.AddFontFile(Path.Combine(Application.StartupPath, "pos_f.ttf"));
          foreach (Control ctr in frm.Controls)
          {
              ctr.Font = new Font(pfc.Families[0], 9, FontStyle.Regular);
          }
          
      }
      public void ReadFont(UserControl frm)
      {
          PrivateFontCollection pfc = new PrivateFontCollection();

          pfc.AddFontFile(Path.Combine(Application.StartupPath, "pos_f.ttf"));
          
              frm.Font = new Font(pfc.Families[0], 9, FontStyle.Regular);
          

      }

    }
}
