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
    
    public partial class PRODUCT
    {
        public int ProductID { get; set; }
        public string ProductNameDesc { get; set; }
        public int Status { get; set; }
        public string Color { get; set; }
        public string Note { get; set; }
        public Nullable<int> CreateBy { get; set; }
        public Nullable<System.DateTime> CreateDate { get; set; }
        public Nullable<int> UpdateBy { get; set; }
        public Nullable<System.DateTime> UpdateDate { get; set; }
        public string ProductNameSort { get; set; }
        public string Portions { get; set; }
        public Nullable<int> Position { get; set; }
    }
}
