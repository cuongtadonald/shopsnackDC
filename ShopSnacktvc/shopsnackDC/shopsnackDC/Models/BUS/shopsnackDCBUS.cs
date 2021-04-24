using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using shopsnackDCConnection;

namespace shopsnackDC.Models.BUS
{
    public class shopsnackDCBUS
    {
        public static IEnumerable<SanPham> DanhSach()
        {
            var db = new shopsnackDCConnectionDB();
            return db.Query<SanPham>("select * from SanPham where TinhTrang = 1");
        }
        public static SanPham ChiTietSP(String a)
        {
            var db = new shopsnackDCConnectionDB();
            return db.SingleOrDefault<SanPham> ("select * from SanPham sp join NhaSanXuat nsx on nsx.MaNhaSX = sp.MaNhaSX where MaSP = @0" , a);
        }

    }
} 