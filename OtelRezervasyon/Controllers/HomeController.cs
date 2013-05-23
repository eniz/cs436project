using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OtelRezervasyon.Models;

namespace OtelRezervasyon.Controllers
{
    public class HomeController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /Home/

        public ActionResult Index()
        {
            var odaList = (from oda in db.ODA
                           orderby oda.ODATIPID ascending
                           select oda);
            return View(odaList.ToList());
        }

    }
}
