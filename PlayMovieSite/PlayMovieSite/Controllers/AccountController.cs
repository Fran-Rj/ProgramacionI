using PlayMovieSite.Models;
using PlayMovieSite.Repository;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace PlayMovieSite.Controllers
{
    public class AccountController : Controller
    {
        ClsUsuario clsUsuario = new ClsUsuario();
        ClsTarjeta clstarjeta = new ClsTarjeta();

        // GET: Login
        [HttpGet]
        public ActionResult Login()
        {      
            return View();
        }

        [HttpPost]
        public ActionResult Login(Usuario usuario)
        {
            SqlConnection conexionBd = new SqlConnection("Server=FRANK; database=PlayMovie; integrated security=true");
            conexionBd.Open();

            String consulta = ("SELECT idUsuario, email, password FROM Usuario WHERE email='" + usuario.email + "' AND password='" + usuario.password + "'");

            SqlCommand comando = new SqlCommand(consulta, conexionBd);

            SqlDataReader lector = comando.ExecuteReader();
            if (lector.HasRows == true)
            {
                /*SqlConnection conexionBd = new SqlConnection("Server=FRANK; database=PlayMovie; integrated security=true");
                conexionBd.Open();

                String consulta = ("SELECT idUsuario, nombreUsuario FROM Usuario WHERE idUsuario='" + usuario.email + "'");

                SqlCommand comando = new SqlCommand(consulta, conexionBd);*/

                conexionBd.Close();

                return Redirect("/View/Premium");
            }
            else
            {
                /*string mensaje = "Llenar campos!";
                ViewBag.Message = mensaje;*/

                /*string error = "Usuario y/o contraseña incorrectos";
                ViewBag.Error = error;*/

                return View(usuario);
            }
        }   

        // Guardar y/o Actualizar un Usuario

        // Cargan la informacion del usuario en las cajas de texto para actualizarla
        [HttpGet]
        public ActionResult Edit(int? id)
        {
            Usuario user= new Usuario();
            user.idUsuario = Convert.ToInt32(id);

            Usuario UserFind = clsUsuario.Buscar(user.idUsuario);

            return View(UserFind);
        }

        [HttpPost]
        public ActionResult Edit(Usuario usuario)
        {
            if(usuario.nombreUsuario == null || usuario.email == null || usuario.password == null)
            {
                return View(usuario);
            }
            else if(usuario.idUsuario == 0)
            {
                clsUsuario.Create(usuario);

                return RedirectToAction("Users");
            }
            else
            {
                clsUsuario.Update(usuario);

                return RedirectToAction("Users");
            }
        }

        // Eliminar
        public ActionResult Delete(int id)
        {
            Usuario usuario = new Usuario();
            usuario.idUsuario = id;

            clsUsuario.Delete(usuario);

            return RedirectToAction("Users");
        }

        // Muestra la lista de Usuarios.
        public ActionResult Users()
        {
            var listado = clsUsuario.UserList();

            return View(listado);
        }

        // -------------------- TARJETA --------------------
        public ActionResult Cards()
        {
            var listado = clstarjeta.CardList();

            return View(listado); //return new HttpStatusCodeResult(HttpStatusCode.NotFound);
        }

        [HttpGet]
        public ActionResult Card()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Card(Tarjeta tarjeta)
        {

            SqlConnection conexionBd = new SqlConnection("Server=FRANK; database=PlayMovie; integrated security=true");
            conexionBd.Open();

            String consulta = ("SELECT numTarjeta FROM Tarjeta WHERE numTarjeta='" + tarjeta.numTarjeta + "'");

            SqlCommand comando = new SqlCommand(consulta, conexionBd);

            SqlDataReader lector = comando.ExecuteReader();
            if (lector.HasRows == true)
            {
                conexionBd.Close();
                return Redirect("/View/Films");
            }
            else
            {
                clstarjeta.Create(tarjeta);
                conexionBd.Close();
                return Redirect("/View/Films");
            }
        }

        // ACTUALIZAR
        public ActionResult Update(int? id)
        {
            Tarjeta tarjeta = new Tarjeta();
            tarjeta.idTarjeta = Convert.ToInt32(id);

            Tarjeta CardFind = clstarjeta.Buscar(tarjeta.idTarjeta);

            return View(CardFind);
        }

        [HttpPost]
        public ActionResult Update(Tarjeta tarjeta)
        {
            if (tarjeta.idTarjeta == 0)
            {
                return View(tarjeta);
            }
            else
            {
                clstarjeta.Update(tarjeta);

                return RedirectToAction("Cards");
            }
        }

        // ELIMINAR
        public ActionResult Remove(int id)
        {
            Tarjeta tarjeta = new Tarjeta();
            tarjeta.idTarjeta = id;

            clstarjeta.Delete(tarjeta);

            return RedirectToAction("Cards");
        }

        // ------------------- EDITAR IMAGEN -----------------------
        public ActionResult Index()
        {
            return View();
        }

    }
}