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
    
    public partial class sp_getBookListWithCategoryID_Result
    {
        public int bookID { get; set; }
        public string bookName { get; set; }
        public string bookYearOfPublication { get; set; }
        public Nullable<int> publisherID { get; set; }
        public Nullable<decimal> bookPrice { get; set; }
        public Nullable<byte> bookPageCount { get; set; }
        public Nullable<byte> bookStockQty { get; set; }
        public Nullable<int> languageID { get; set; }
        public string bookDescription { get; set; }
        public Nullable<bool> isTheBookActive { get; set; }
        public string bookCoverPhoto { get; set; }
        public string bookISBN { get; set; }
        public int bookID1 { get; set; }
        public int categoryID { get; set; }
        public int categoryID1 { get; set; }
        public string categoryName { get; set; }
        public string categoryDescription { get; set; }
        public Nullable<bool> isTheCategoryActive { get; set; }
    }
}
