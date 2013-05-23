using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OtelRezervasyon.Models;

namespace OtelRezervasyon.Controllers
{
    public class OdemeTipiController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /OdemeTipi/
        [Authorize]
        public ActionResult Index()
        {
            return View(db.ODEMETIPI.ToList());
        }

        //
        // GET: /OdemeTipi/Details/5
        [Authorize]
        public ActionResult Details(decimal id = 0)
        {
            ODEMETIPI odemetipi = db.ODEMETIPI.Find(id);
            if (odemetipi == null)
            {
                return HttpNotFound();
            }
            return View(odemetipi);
        }

        //
        // GET: /OdemeTipi/Create
        [Authorize]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /OdemeTipi/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ODEMETIPI odemetipi)
        {
            if (ModelState.IsValid)
            {
                db.ODEMETIPI.Add(odemetipi);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(odemetipi);
        }

        //
        // GET: /OdemeTipi/Edit/5
        [Authorize]
        public ActionResult Edit(decimal id = 0)
        {
            ODEMETIPI odemetipi = db.ODEMETIPI.Find(id);
            if (odemetipi == null)
            {
                return HttpNotFound();
            }
            return View(odemetipi);
        }

        //
        // POST: /OdemeTipi/Edit/5
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ODEMETIPI odemetipi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(odemetipi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(odemetipi);
        }

        //
        // GET: /OdemeTipi/Delete/5
        [Authorize]
        public ActionResult Delete(decimal id = 0)
        {
            ODEMETIPI odemetipi = db.ODEMETIPI.Find(id);
            if (odemetipi == null)
            {
                return HttpNotFound();
            }
            return View(odemetipi);
        }

        //
        // POST: /OdemeTipi/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            ODEMETIPI odemetipi = db.ODEMETIPI.Find(id);
            db.ODEMETIPI.Remove(odemetipi);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}