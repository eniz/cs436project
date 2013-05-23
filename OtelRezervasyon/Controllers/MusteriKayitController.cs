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
    public class MusteriKayitController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /MusteriKayit/

        public ActionResult Index()
        {
            var musteri = db.MUSTERI.Include(m => m.IL);
            return View(musteri.ToList());
        }

        //
        // GET: /MusteriKayit/Details/5

        public ActionResult Details(decimal id = 0)
        {
            MUSTERI musteri = db.MUSTERI.Find(id);
            if (musteri == null)
            {
                return HttpNotFound();
            }
            return View(musteri);
        }

        //
        // GET: /MusteriKayit/Create

        public ActionResult Create()
        {
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI");
            return View();
        }

        //
        // POST: /MusteriKayit/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(MUSTERI musteri)
        {
            if (ModelState.IsValid)
            {
                db.MUSTERI.Add(musteri);
                db.SaveChanges();
                return RedirectToAction("Index", "Home");
            }

            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", musteri.ILID);
            return View(musteri);
        }

        //
        // GET: /MusteriKayit/Edit/5

        public ActionResult Edit(decimal id = 0)
        {
            MUSTERI musteri = db.MUSTERI.Find(id);
            if (musteri == null)
            {
                return HttpNotFound();
            }
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", musteri.ILID);
            return View(musteri);
        }

        //
        // POST: /MusteriKayit/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(MUSTERI musteri)
        {
            if (ModelState.IsValid)
            {
                db.Entry(musteri).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", musteri.ILID);
            return View(musteri);
        }

        //
        // GET: /MusteriKayit/Delete/5

        public ActionResult Delete(decimal id = 0)
        {
            MUSTERI musteri = db.MUSTERI.Find(id);
            if (musteri == null)
            {
                return HttpNotFound();
            }
            return View(musteri);
        }

        //
        // POST: /MusteriKayit/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            MUSTERI musteri = db.MUSTERI.Find(id);
            db.MUSTERI.Remove(musteri);
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