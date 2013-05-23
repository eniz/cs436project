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
    public class OtelController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /Otel/
        [Authorize]
        public ActionResult Index()
        {
            var otel = db.OTEL.Include(o => o.IL);
            return View(otel.ToList());
        }

        //
        // GET: /Otel/Details/5
        [Authorize]
        public ActionResult Details(decimal id = 0)
        {
            OTEL otel = db.OTEL.Find(id);
            if (otel == null)
            {
                return HttpNotFound();
            }
            return View(otel);
        }

        //
        // GET: /Otel/Create
        [Authorize]
        public ActionResult Create()
        {
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI");
            return View();
        }

        //
        // POST: /Otel/Create
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(OTEL otel)
        {
            if (ModelState.IsValid)
            {
                db.OTEL.Add(otel);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", otel.ILID);
            return View(otel);
        }

        //
        // GET: /Otel/Edit/5
        [Authorize]
        public ActionResult Edit(decimal id = 0)
        {
            OTEL otel = db.OTEL.Find(id);
            if (otel == null)
            {
                return HttpNotFound();
            }
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", otel.ILID);
            return View(otel);
        }

        //
        // POST: /Otel/Edit/5
        [Authorize]
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(OTEL otel)
        {
            if (ModelState.IsValid)
            {
                db.Entry(otel).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.ILID = new SelectList(db.IL, "ID", "ILADI", otel.ILID);
            return View(otel);
        }

        //
        // GET: /Otel/Delete/5
        [Authorize]
        public ActionResult Delete(decimal id = 0)
        {
            OTEL otel = db.OTEL.Find(id);
            if (otel == null)
            {
                return HttpNotFound();
            }
            return View(otel);
        }

        //
        // POST: /Otel/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(decimal id)
        {
            OTEL otel = db.OTEL.Find(id);
            db.OTEL.Remove(otel);
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