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
    
    public partial class PRINTE_JOB_DETAIL
    {
        public int ID { get; set; }
        public Nullable<int> CategoryID { get; set; }
        public Nullable<int> ProductID { get; set; }
        public Nullable<int> PrinterID { get; set; }
        public Nullable<int> TemplatesID { get; set; }
        public Nullable<int> Status { get; set; }
        public string Notes { get; set; }
        public Nullable<int> CreateBy { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<int> UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
    }
}