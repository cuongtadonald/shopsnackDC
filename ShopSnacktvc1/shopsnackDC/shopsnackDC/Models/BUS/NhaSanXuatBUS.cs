using shopsnackDCConnection;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace shopsnackDC.Models.BUS
{
    public class NhaSanXuatBUS
    {
        public static IEnumerable<NhaSanXuat> DanhSach()
        {
            var db = new shopsnackDCConnectionDB();
            return db.Query<NhaSanXuat>("select * from NhaSanXuat where TinhTrang = 1");
        }
        public static IEnumerable<SanPham> ChiTiet(String id)
        {
            var db = new shopsnackDCConnectionDB();
            return db.Query<SanPham>("select * from SanPham where MaNhaSX = '"+id+"'");
        }
    }   
}