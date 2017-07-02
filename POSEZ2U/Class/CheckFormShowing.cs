using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace POSEZ2U.Class
{
   public class CheckFormShowing
    {
       public static Boolean FromShowing(string formName)
       {
           Boolean result = false;
           try
           {
               FormCollection fc = Application.OpenForms;
               foreach (Form frm in fc)
               {
                   if (frm.Name == formName)
                   {
                       result = true;
                       break;
                   }
               }
           }
           catch (Exception ex)
           {
 
           }
           return result;
       }
       public static void CloseForm()
       {
           frmMain frm = new frmMain();
           if (Application.OpenForms.OfType<frmMain>().Any())
               frm.Close();
           else
               MessageBox.Show("Form is not opened");
       }
       public static void CloseForm1()
       {
           Form1 frm = new Form1();
           if (Application.OpenForms.OfType<Form1>().Any())
               frm.Close();
           else
               MessageBox.Show("Form is not opened");
       }
       public static void CloseFormFloor()
       {
           frmFloor frm = new frmFloor();
           if (Application.OpenForms.OfType<frmFloor>().Any())
               frm.Close();
           else
               MessageBox.Show("Form is not opened");
       }
    }
}
