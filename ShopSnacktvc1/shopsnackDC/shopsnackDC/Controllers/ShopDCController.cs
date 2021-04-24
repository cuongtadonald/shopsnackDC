using PagedList;
using shopsnackDC.Models.BUS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace shopsnackDC.Controllers
{
    public class ShopDCController : Controller
    {
        // GET: ShopDC
        public ActionResult Index(int page = 1, int pagesize = 2)
        {
            var db = shopsnackDCBUS.DanhSach().ToPagedList(page, pagesize); ;
            return View(db);
        }

        // GET: ShopDC/Details/5
        public ActionResult Details(String id)
        {
            var db = shopsnackDCBUS.ChiTietSP(id);
            return View(db);
        }

        // GET: ShopDC/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: ShopDC/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ShopDC/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: ShopDC/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: ShopDC/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: ShopDC/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}

