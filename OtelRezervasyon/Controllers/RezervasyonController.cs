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
    
    public class RezervasyonController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /Rezervasyon/
        [Authorize]
        public ActionResult Index()
        {
            var rezervasyon = db.REZERVASYON.Include(r => r.MUSTERI).Include(r => r.ODATIPI).Include(r => r.ODEMETIPI).Include(r => r.REZERVASYONDURUM);
            return View(rezervasyon.ToList());
        }

        //
        // GET: /Rezervasyon/Details/5
        [Authorize]
        public ActionResult Details(decimal id = 0)
        {
            REZERVASYON rezervasyon = db.REZERVASYON.Find(id);
            if (rezervasyon == null)
            {
                return HttpNotFound();
            }
            return View(rezervasyon);
        }

        //
        // GET: /Rezervasyon/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.MUSTERIID = new SelectList(db.MUSTERI, "ID", "ADI");
            ViewBag.ODATIPIID = new SelectList(db.ODATIPI, "ID", "ADI");
            ViewBag.ODEMETIPID = new SelectList(db.ODEMETIPI, "ID", "ODEMEADI");
            ViewBag.REZERVASYONDURUMID = new SelectList(db.REZERVASYONDURUM, "ID", "ADI");
            return View();
        }

        //
        // POST: /Rezervasyon/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(REZERVASYON rezervasyon)
        {
            if (ModelState.IsValid)
            {
                db.REZERVASYON.Add(rezervasyon);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MUSTERIID = new SelectList(db.MUSTERI, "ID", "ADI", rezervasyon.MUSTERIID);
            ViewBag.ODATIPIID = new SelectList(db.ODATIPI, "ID", "ADI", rezervasyon.ODATIPIID);
            ViewBag.ODEMETIPID = new SelectList(db.ODEMETIPI, "ID", "ODEMEADI", rezervasyon.ODEMETIPID);
            ViewBag.REZERVASYONDURUMID = new SelectList(db.REZERVASYONDURUM, "ID", "ADI", rezervasyon.REZERVASYONDURUMID);
            return View(rezervasyon);
        }

        //
        // GET: /Rezervasyon/Edit/5
        [Authorize]
        public ActionResult Edit(decimal id = 0)
        {
            REZERVASYON rezervasyon = db.REZERVASYON.Find(id);
            if (rezervasyon == null)
            {
                return HttpNotFound();
            }
            ViewBag.MUSTERIID = new SelectList(db.MUSTERI, "ID", "ADI", rezervasyon.MUSTERIID);
            ViewBag.ODATIPIID = new SelectList(db.ODATIPI, "ID", "ADI", rezervasyon.ODATIPIID);
            ViewBag.ODEMETIPID = new SelectList(db.ODEMETIPI, "ID", "ODEMEADI", rezervasyon.ODEMETIPID);
            ViewBag.REZERVASYONDURUMID = new SelectList(db.REZERVASYONDURUM, "ID", "ADI", rezervasyon.REZERVASYONDURUMID);
            return View(rezervasyon);
        }

        //
        // POST: /Rezervasyon/Edit/5
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(REZERVASYON rezervasyon)
        {
            if (ModelState.IsValid)
            {
                db.Entry(rezervasyon).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MUSTERIID = new SelectList(db.MUSTERI, "ID", "ADI", rezervasyon.MUSTERIID);
            ViewBag.ODATIPIID = new SelectList(db.ODATIPI, "ID", "ADI", rezervasyon.ODATIPIID);
            ViewBag.ODEMETIPID = new SelectList(db.ODEMETIPI, "ID", "ODEMEADI", rezervasyon.ODEMETIPID);
            ViewBag.REZERVASYONDURUMID = new SelectList(db.REZERVASYONDURUM, "ID", "ADI", rezervasyon.REZERVASYONDURUMID);
            return View(rezervasyon);
        }

        //
        // GET: /Rezervasyon/Delete/5
        [Authorize]
        public ActionResult Delete(decimal id = 0)
        {
            REZERVASYON rezervasyon = db.REZERVASYON.Find(id);
            if (rezervasyon == null)
            {
                return HttpNotFound();
            }
            return View(rezervasyon);
        }

        //
        // POST: /Rezervasyon/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            REZERVASYON rezervasyon = db.REZERVASYON.Find(id);
            db.REZERVASYON.Remove(rezervasyon);
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