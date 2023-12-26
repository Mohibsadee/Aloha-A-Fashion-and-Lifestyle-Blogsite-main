using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Aloha.Models;

namespace Aloha.Controllers
{
    public class HomeController : Controller
    {
        public static int UserId;
        ALOHAEntities db =new ALOHAEntities();

        public ActionResult Index()
        {

            return View();
        }

        public ActionResult Category()
        {

            return View();
        }
        [HttpGet]
        public ActionResult AdminLogin()
        {

            return View();
        }
        [HttpPost]
        public ActionResult AdminLogin(AdminLogin ad1)
        {
            AdminLogin ad2 = db.AdminLogins.Where(x=>x.AdminName==ad1.AdminName && x.AdminPass == ad1.AdminPass).FirstOrDefault();
            if(ad2!= null)
            {
                Session["AdminName"] = ad1.AdminName;
                return RedirectToAction("Index", "Home");
            }
            else
            {
                ViewBag.msg = "Invalid id or password";
            }
            return View();
        }
        //public ActionResult admindashboard()
        //{

        //    return View();
        //}

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }
        [HttpGet]
        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }
        [HttpPost]
        public ActionResult Contact(ContactInfo contactInfo)
        {
            if (!contactInfo.contactno.StartsWith("01") || contactInfo.contactno.Length!=11)
            {
                ViewBag.Notification = "This number is invalid";
                return View();
            }
            else
            {
                db.ContactInfoes.Add(contactInfo);
                db.SaveChanges();

                //Page. = "Your message has been sent";
                return RedirectToAction("Index", "Home");
            }
            
        }
        public ActionResult DataShow()
        {

            return View(db.TBLUserInfoes.ToList());
        }
        [HttpGet]
        public ActionResult ProfileShow()
        {
            TBLUserInfo tbluser = new TBLUserInfo();
            TempData["data"] = tbluser.IdUs;
            tbluser = db.TBLUserInfoes.SingleOrDefault(x => x.IdUs== UserId);
            return View(tbluser);
        }
        [HttpPost]
        public ActionResult ProfileShow(TBLUserInfo tBLUserInfo)
        {
            tBLUserInfo.RePasswordUs = tBLUserInfo.PasswordUs;
            db.Entry(tBLUserInfo).State = EntityState.Modified;
            db.SaveChanges();

            return RedirectToAction("ProfileShow");
        }

        
        public ActionResult Inbox()
        {

            return View(db.ContactInfoes.ToList());
        }
        public ActionResult SignUp()
        {
           

            return View();
        }
        [HttpPost]
        public ActionResult SignUp(TBLUserInfo tBLUserInfo)
        {
            if (db.TBLUserInfoes.Any(x => x.UsernameUs == tBLUserInfo.UsernameUs || x.Email == tBLUserInfo.Email) || db.AdminLogins.Any(x=> x.AdminName == tBLUserInfo.Email))
            {
                ViewBag.Notification = "Account already exits with same username or email";
                return View();
            }
            else if(tBLUserInfo.PasswordUs.Length<3 || tBLUserInfo.PasswordUs.Length >20)
            {
                ViewBag.Notification = "Password Length must be in between 3 to 20 characters";
                return View();
            }

            else
            {
                db.TBLUserInfoes.Add(tBLUserInfo);
                db.SaveChanges();

                Session["IdUsSS"]=tBLUserInfo.IdUs;
                UserId = tBLUserInfo.IdUs; 
                Session["UsernameSS"] = tBLUserInfo.UsernameUs.ToString();
                Session["EmailSS"] = tBLUserInfo.Email.ToString();
                return RedirectToAction("Index","Home");


            }

           
        }
        public ActionResult LogOut()
        {
            Session.Clear();
            return RedirectToAction("Index", "Home");
        }
        [HttpGet]

        public ActionResult Login()
        {
            if(Session["UsernameSS"] != null)
            {
                ViewBag.loginYuFa = "Logged in";
            }
            return View() ;
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Login(TBLUserInfo tBLUserInfo)
        {
            AdminLogin ad2 = db.AdminLogins.Where(x => x.AdminName == tBLUserInfo.Email && x.AdminPass == tBLUserInfo.PasswordUs).FirstOrDefault();
            if (ad2 != null)
            {
                Session["AdminName"] = tBLUserInfo.Email;
                Session["UsernameSS"] = "Admin";
                return RedirectToAction("Index", "Home");
            }
            else
            {
                var checklogin = db.TBLUserInfoes.Where(x => x.Email.Equals(tBLUserInfo.Email) && x.PasswordUs.Equals(tBLUserInfo.PasswordUs)).FirstOrDefault();
                if (checklogin != null)
                {
                    Session["IdUsSS"] = checklogin.IdUs.ToString();
                    Session["UsernameSS"] = checklogin.UsernameUs.ToString();
                    UserId = checklogin.IdUs;
                    //Session["EmailSS"] = checklogin.Email.ToString();
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ViewBag.Notification = "Wrong Email Or Password";
                }
            }
            return View();

        }

        public ActionResult Blogs(string category)
        {
            List<BlogPost> blogs;
            if (category == "All")
            {
                blogs = db.BlogPosts.ToList();
                ViewBag.categoryName = "Explore our Fashion & Lifestyle World";
                ViewBag.category = "All Blogs";
            }
            else
            {
                blogs = db.BlogPosts.Where(temp => temp.Category.Equals(category)).ToList();
                ViewBag.categoryName = category;
                ViewBag.category = category;
            }            
            return View(blogs);
        }

        public ActionResult Bdetails(int id)
        {
            if(Session["usernamess"] == null)
            {
                ViewBag.NoUser = "User Needs To Log In";
            }
            BlogPost blog=db.BlogPosts.Where(temp => temp.postId.Equals(id)).SingleOrDefault();
            List<Comment> comments = db.Comments.Where(temp => temp.postId == id).ToList();
            return View(new object[] {blog,comments});
        }

        [HttpPost]
        public ActionResult Comments(string postid,string commentstr)
        {
            int id = Int32.Parse(postid);
            Comment comment = new Comment
            {
                postId = id,
                CommentBy = Session["usernamess"].ToString(),
                Content = commentstr,
                Created_On = DateTime.Now

            };
            db.Comments.Add(comment);
            db.SaveChanges();
            return RedirectToAction("Bdetails/"+postid, "Home");
        }
        public ActionResult User_Comment()
        {

            return View(db.Comments.ToList());
        }

        public ActionResult CommentApproved(int id)
        {
            Comment comment = db.Comments.Where(temp => temp.CommentId == id).SingleOrDefault();
            comment.CommentApproval = 1;
            db.Entry(comment).State = System.Data.Entity.EntityState.Modified;
            db.SaveChanges();
            
            return RedirectToAction("User_Comment");
        }

        public ActionResult CommentDeleted(int id)
        {
            Comment comment = db.Comments.Where(temp => temp.CommentId == id).SingleOrDefault();
            db.Comments.Remove(comment);
            db.SaveChanges();

            return RedirectToAction("User_Comment");
        }
    }
}