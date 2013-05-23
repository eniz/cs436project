using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using OtelRezervasyon.Models;

namespace OtelRezervasyon.Controllers
{
    public class AdminController : Controller
    {
        private Entities db = new Entities();

        //
        // GET: /Admin/
        [Authorize]
        public ActionResult Index()
        {
            // Son 5 Rezervasyon
            var rezList = (from rezervasyon in db.REZERVASYON
                           orderby rezervasyon.CIKISTARIHI ascending
                           select rezervasyon).Take(5);
            return View(rezList.ToList());
        }

        [Authorize]
        public ActionResult getCustomers()
        {
            //Son 5 Rezervasyon
            var cusList = (from musteri in db.MUSTERI
                           orderby musteri.ID ascending
                           select musteri).Take(5);
            return PartialView(cusList.ToList());
        }
    }
}
