//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ODMS.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class tbld_bundle_price_details
    {
        public int id { get; set; }
        public int bundle_price_id { get; set; }
        public int sku_id { get; set; }
        public int batch_id { get; set; }
        public int quantity { get; set; }
        public double db_lifting_price { get; set; }
        public double outlet_lifting_price { get; set; }
        public double mrp { get; set; }
        public System.DateTime start_date { get; set; }
        public System.DateTime end_date { get; set; }
        public int status { get; set; }
    
        public virtual tbld_bundle_price tbld_bundle_price { get; set; }
    }
}