using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ServicePOS.Model
{
   public class CancelOrderModel
    {
        public int Staff { get; set; }
        public int OrderId { get; set; }
        public Double Price { get; set; }
        public DateTime Time { get; set; }
        public int Admin { get; set; }
    }
}
