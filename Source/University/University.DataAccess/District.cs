//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace University.DataAccess
{
    using System;
    using System.Collections.Generic;
    
    public partial class District
    {
        public District()
        {
            this.Students = new HashSet<Student>();
            this.Thanas = new HashSet<Thana>();
        }
    
        public int Id { get; set; }
        public string Name { get; set; }
        public int DivisionId { get; set; }
    
        public virtual Devision Devision { get; set; }
        public virtual ICollection<Student> Students { get; set; }
        public virtual ICollection<Thana> Thanas { get; set; }
    }
}