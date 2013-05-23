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
    public class OdaTipiController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /OdaTipi/
        [Authorize]
        public ActionResult Index()
        {
            return View(db.ODATIPI.ToList());
        }

        //
        // GET: /OdaTipi/Details/5
        [Authorize]
        public ActionResult Details(decimal id = 0)
        {
            ODATIPI odatipi = db.ODATIPI.Find(id);
            if (odatipi == null)
            {
                return HttpNotFound();
            }
            return View(odatipi);
        }

        //
        // GET: /OdaTipi/Create
        [Authorize]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /OdaTipi/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ODATIPI odatipi)
        {
            if (ModelState.IsValid)
            {
                db.ODATIPI.Add(odatipi);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(odatipi);
        }

        //
        // GET: /OdaTipi/Edit/5
        [Authorize]
        public ActionResult Edit(decimal id = 0)
        {
            ODATIPI odatipi = db.ODATIPI.Find(id);
            if (odatipi == null)
            {
                return HttpNotFound();
            }
            return View(odatipi);
        }

        //
        // POST: /OdaTipi/Edit/5
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ODATIPI odatipi)
        {
            if (ModelState.IsValid)
            {
                db.Entry(odatipi).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(odatipi);
        }

        //
        // GET: /OdaTipi/Delete/5
        [Authorize]
        public ActionResult Delete(decimal id = 0)
        {
            ODATIPI odatipi = db.ODATIPI.Find(id);
            if (odatipi == null)
            {
                return HttpNotFound();
            }
            return View(odatipi);
        }

        //
        // POST: /OdaTipi/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            ODATIPI odatipi = db.ODATIPI.Find(id);
            db.ODATIPI.Remove(odatipi);
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