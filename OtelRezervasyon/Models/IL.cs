//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace OtelRezervasyon.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class IL
    {
        public IL()
        {
            this.MUSTERI = new HashSet<MUSTERI>();
            this.OTEL = new HashSet<OTEL>();
        }
    
        public decimal ID { get; set; }
        public string ILADI { get; set; }
        public decimal ULKEID { get; set; }
    
        public virtual ULKE ULKE { get; set; }
        public virtual ICollection<MUSTERI> MUSTERI { get; set; }
        public virtual ICollection<OTEL> OTEL { get; set; }
    }
}
