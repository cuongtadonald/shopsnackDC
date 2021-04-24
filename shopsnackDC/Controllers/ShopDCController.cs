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
        public ActionResult Index()
        {
            return View();
        }

        // GET: ShopDC/Details/5
        public ActionResult Details(int id)
        {
            return View();
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
