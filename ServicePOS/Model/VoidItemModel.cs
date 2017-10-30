using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServicePOS.Model
{
   public class VoidItemModel
    {
       public string Staff { get; set; }
       public string OrderId { get; set; }
       public string ItemName { get; set; }
       public string Price { get; set; }
       public string Time { get; set; }
       public string Admin { get; set; }
    }
}
