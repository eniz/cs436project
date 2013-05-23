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
    public class MusteriController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /Musteri/
        [Authorize]
        public ActionResult Index()
        {
            var musteri = db.MUSTERI.Include(m => m.IL);
            return View(musteri.ToList());
        }

        //
        // GET: /Musteri/Details/5
        [Authorize]
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
        // GET: /Musteri/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI");
            return View();
        }

        //
        // POST: /Musteri/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(MUSTERI musteri)
        {
            if (ModelState.IsValid)
            {
                db.MUSTERI.Add(musteri);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", musteri.ILID);
            return View(musteri);
        }

        //
        // GET: /Musteri/Edit/5
        [Authorize]
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
        // POST: /Musteri/Edit/5
        [Authorize]
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
        // GET: /Musteri/Delete/5
        [Authorize]
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
        // POST: /Musteri/Delete/5
        [Authorize]
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