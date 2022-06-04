using PlayMovieSite.Models;
using PlayMovieSite.Repository;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;

namespace PlayMovieSite.Controllers
{
    public class ViewController : Controller
    {
        ClsUsuario clsUsuario = new ClsUsuario();

        // GET: Inicio
        public ActionResult Premium()
        {
            var listado = clsUsuario.UserList();

            return View(listado);
        }

        // -------------------- PELICULAS --------------------
        public ActionResult Films()
        {
            var listado = clsUsuario.UserList();

            return View();
        }

        public ActionResult Description()
        {
            var listado = clsUsuario.UserList();

            return View();
        }

        public ActionResult Play()
        {
            var listado = clsUsuario.UserList();

            return View();
        }

        public ActionResult Movies()
        {
            var listado = clsUsuario.UserList();

            return View();
        }

        public ActionResult Details()
        {
            var listado = clsUsuario.UserList();

            return View();
        }

        public ActionResult See()
        {
            var listado = clsUsuario.UserList();

            return View();
        }

        // -------------------- PUBLICIDAD --------------------
        public ActionResult Ander()
        {
            return View();
        }

        // ------------------- EDITAR IMAGEN -----------------------
        public ActionResult Prueba()
        {
            return View();
        }

        /*public ActionResult Prueba()
        {
            return View();
        }

        readonly SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conexion"].ConnectionString);
        public static int id;
        public ActionResult Prueba(Usuario usuario)
        {


            id = int.Parse(Session["usuariologueado"].ToString());
            if (Session["usuariologueado"] == null)
            {
                return Redirect("Register.aspx");
            }
            else
            {

                using (SqlCommand cmd = new SqlCommand("Perfil", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.Add("@Id", SqlDbType.Int).Value = id;
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        //image.ImageUrl = "/Sources/Pages/Imagen.aspx?id=" + id;
                        usuario.nombreUsuario = dr["Nombres"].ToString();
                        usuario.email = dr["Apellidos"].ToString();
                        usuario.password = dr["Fecha"].ToString();
                        //tbFecha.Text = DateTime.Now.ToString("dd-MM-yyyy");
                        //this.tbUsuario.Text = dr["Usuario"].ToString();
                        dr.Close();
                    }
                    con.Close();
                    return View();
                }
            }
        }*/
    }
}