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
    
    public partial class REZERVASYON
    {
        public decimal ID { get; set; }
        public decimal MUSTERIID { get; set; }
        public System.DateTime GIRISTARIHI { get; set; }
        public System.DateTime CIKISTARIHI { get; set; }
        public decimal TOPLAMTUTAR { get; set; }
        public System.DateTime REZERVASYONTARIHI { get; set; }
        public decimal ODASAYISI { get; set; }
        public decimal ODATIPIID { get; set; }
        public decimal REZERVASYONDURUMID { get; set; }
        public decimal ODEMETIPID { get; set; }
    
        public virtual MUSTERI MUSTERI { get; set; }
        public virtual ODATIPI ODATIPI { get; set; }
        public virtual ODEMETIPI ODEMETIPI { get; set; }
        public virtual REZERVASYONDURUM REZERVASYONDURUM { get; set; }
    }
}
