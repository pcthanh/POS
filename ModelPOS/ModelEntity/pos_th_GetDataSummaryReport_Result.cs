//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelPOS.ModelEntity
{
    using System;
    
    public partial class pos_th_GetDataSummaryReport_Result
    {
        public int NetSale { get; set; }
        public int Discount { get; set; }
        public int Change { get; set; }
        public int Refund { get; set; }
        public double CashTotal { get; set; }
        public double CardTotal { get; set; }
        public double ChequeTotal { get; set; }
        public double AccountTotal { get; set; }
        public double GrifCardTotal { get; set; }
    }
}
