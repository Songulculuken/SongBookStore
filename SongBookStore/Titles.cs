//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace SongBookStore
{
    using System;
    using System.Collections.Generic;
    
    public partial class Titles
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Titles()
        {
            this.Employees = new HashSet<Employees>();
        }
    
        public int titleID { get; set; }
        public string titleName { get; set; }
        public string titleShortCode { get; set; }
        public string titleDescription { get; set; }
        public Nullable<bool> isTheTitleActive { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Employees> Employees { get; set; }
    }
}
