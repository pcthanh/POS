using System;
using System.Collections.Generic;
using System.Drawing.Printing;
using System.Linq;
using System.Management;
using System.Printing;
using System.Text;
using System.Threading.Tasks;

namespace POSEZ2U.Class
{
   public static class CheckYourPrinter
    {
       public static bool CheckMyPrinter(string printerToCheck)
       {
           ManagementObjectSearcher searcher = new
                ManagementObjectSearcher("SELECT * FROM   Win32_Printer");

           bool IsReady = false;
           int count = 0;
           foreach (ManagementObject printer in searcher.Get())
           {
               

               if (printer["Name"].ToString().ToLower().Equals(printerToCheck.ToLower()))
               {
                   count = 1;
                   string gg = printer["Name"].ToString();
                   string hhh = printer["WorkOffline"].ToString();
                   var status = printer["PrinterState"].ToString();
                   //var status = printer["PrinterStatus"].ToString();
                   SystemLog.LogPOS.WriteLog("CheckMyPrinter::::::::::::::::status:::::::::::::::::::" + status);
                   SystemLog.LogPOS.WriteLog("CheckMyPrinter::::::::::::::::name:::::::::::::::::::" + gg);
                   if (printer["WorkOffline"].ToString().ToLower().Equals("false".ToLower()))
                   {
                       IsReady = true;
                   }
               }
           }
           if (count == 0)
           {
               IsReady = false;
           }
           return IsReady;
       }
       public static void check()
       {
           PrintQueueCollection printQueues = null;
          // List<PrinterDescription> printerDescriptions = null;
           CheckPrinter("Dataprint 80mm Series Printer");
           // Get a list of available printers.
           PrintServer printServer = new PrintServer();
           printQueues = printServer.GetPrintQueues(new[] { EnumeratedPrintQueueTypes.Local, EnumeratedPrintQueueTypes.Connections });
          

           foreach (PrintQueue printQueue in printQueues)
           {
               // The OneNote printer driver causes crashes in 64bit OSes so for now just don't include it.
               // Also redirected printer drivers cause crashes for some printers. Another WPF issue that cannot be worked around.
               if (printQueue.Name.Equals("Dataprint 80mm Series Printer"))
               {
                   string status = printQueue.QueueStatus.ToString();
               }

           }
       }
       private static bool CheckPrinter(string printerName)
       {
           bool online = false;
           try
           {
               PrintDocument printDocument = new PrintDocument();
               printDocument.PrinterSettings.PrinterName = printerName;
               online = printDocument.PrinterSettings.IsValid;
           }
           catch
           {
               online = false;
           }
           return online;
       }
    }
}
