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
    using System.Collections.Generic;
    
    public partial class INVOICE_DETAIL_HISTORY
    {
        public int ID { get; set; }
        public int InvoiceDetailID { get; set; }
        public int InvoiceID { get; set; }
        public string InvoiceNumber { get; set; }
        public Nullable<int> OrderDetailID { get; set; }
        public Nullable<int> KeyItem { get; set; }
        public int Status { get; set; }
        public Nullable<int> ProductID { get; set; }
        public Nullable<double> Price { get; set; }
        public Nullable<double> Qty { get; set; }
        public Nullable<double> Total { get; set; }
        public Nullable<int> Seat { get; set; }
        public Nullable<int> DynId { get; set; }
        public Nullable<int> PrintType { get; set; }
        public Nullable<int> CreateBy { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<int> UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public string Note { get; set; }
    }
}
