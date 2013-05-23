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
    public class OdaKapasiteController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /OdaKapasite/
        [Authorize]
        public ActionResult Index()
        {
            var odakapasite = db.ODAKAPASITE.Include(o => o.ODATIPI);
            return View(odakapasite.ToList());
        }

        //
        // GET: /OdaKapasite/Details/5
        [Authorize]
        public ActionResult Details(decimal id = 0)
        {
            ODAKAPASITE odakapasite = db.ODAKAPASITE.Find(id);
            if (odakapasite == null)
            {
                return HttpNotFound();
            }
            return View(odakapasite);
        }

        //
        // GET: /OdaKapasite/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI");
            return View();
        }

        //
        // POST: /OdaKapasite/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ODAKAPASITE odakapasite)
        {
            if (ModelState.IsValid)
            {
                db.ODAKAPASITE.Add(odakapasite);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI", odakapasite.ODATIPID);
            return View(odakapasite);
        }

        //
        // GET: /OdaKapasite/Edit/5
        [Authorize]
        public ActionResult Edit(decimal id = 0)
        {
            ODAKAPASITE odakapasite = db.ODAKAPASITE.Find(id);
            if (odakapasite == null)
            {
                return HttpNotFound();
            }
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI", odakapasite.ODATIPID);
            return View(odakapasite);
        }

        //
        // POST: /OdaKapasite/Edit/5
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ODAKAPASITE odakapasite)
        {
            if (ModelState.IsValid)
            {
                db.Entry(odakapasite).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI", odakapasite.ODATIPID);
            return View(odakapasite);
        }

        //
        // GET: /OdaKapasite/Delete/5
        [Authorize]
        public ActionResult Delete(decimal id = 0)
        {
            ODAKAPASITE odakapasite = db.ODAKAPASITE.Find(id);
            if (odakapasite == null)
            {
                return HttpNotFound();
            }
            return View(odakapasite);
        }

        //
        // POST: /OdaKapasite/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            ODAKAPASITE odakapasite = db.ODAKAPASITE.Find(id);
            db.ODAKAPASITE.Remove(odakapasite);
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