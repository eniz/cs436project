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
    public class OdaController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /Oda/
        [Authorize]
        public ActionResult Index()
        {
            var oda = db.ODA.Include(o => o.ODAKAPASITE).Include(o => o.ODATIPI);
            return View(oda.ToList());
        }

        //
        // GET: /Oda/Details/5
        [Authorize]
        public ActionResult Details(decimal id = 0)
        {
            ODA oda = db.ODA.Find(id);
            if (oda == null)
            {
                return HttpNotFound();
            }
            return View(oda);
        }

        //
        // GET: /Oda/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.ODAKAPASITEID = new SelectList(db.ODAKAPASITE, "ID", "ADI");
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI");
            return View();
        }

        //
        // POST: /Oda/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(ODA oda)
        {
            if (ModelState.IsValid)
            {
                db.ODA.Add(oda);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ODAKAPASITEID = new SelectList(db.ODAKAPASITE, "ID", "ADI", oda.ODAKAPASITEID);
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI", oda.ODATIPID);
            return View(oda);
        }

        //
        // GET: /Oda/Edit/5
        [Authorize]
        public ActionResult Edit(decimal id = 0)
        {
            ODA oda = db.ODA.Find(id);
            if (oda == null)
            {
                return HttpNotFound();
            }
            ViewBag.ODAKAPASITEID = new SelectList(db.ODAKAPASITE, "ID", "ADI", oda.ODAKAPASITEID);
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI", oda.ODATIPID);
            return View(oda);
        }

        //
        // POST: /Oda/Edit/5
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(ODA oda)
        {
            if (ModelState.IsValid)
            {
                db.Entry(oda).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ODAKAPASITEID = new SelectList(db.ODAKAPASITE, "ID", "ADI", oda.ODAKAPASITEID);
            ViewBag.ODATIPID = new SelectList(db.ODATIPI, "ID", "ADI", oda.ODATIPID);
            return View(oda);
        }

        //
        // GET: /Oda/Delete/5
        [Authorize]
        public ActionResult Delete(decimal id = 0)
        {
            ODA oda = db.ODA.Find(id);
            if (oda == null)
            {
                return HttpNotFound();
            }
            return View(oda);
        }

        //
        // POST: /Oda/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            ODA oda = db.ODA.Find(id);
            db.ODA.Remove(oda);
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