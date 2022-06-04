using PlayMovieSite.Models;
using PlayMovieSite.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PlayMovieSite.Repository
{
    public class ClsUsuario : IUsuario
    {
        public void Create(Usuario usuario)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                try
                {
                    conexionBd.Usuario.Add(usuario);
                    conexionBd.SaveChanges();
                }
                catch (Exception ex)
                {

                }
            }
        }

        public void Update(Usuario usuario)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                Usuario user = conexionBd.Usuario.Find(usuario.idUsuario);
                user.nombreUsuario = usuario.nombreUsuario;
                user.email = usuario.email;
                user.password = usuario.password;
                conexionBd.SaveChanges();
            }
        }

        public void Delete(Usuario usuario)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                usuario = conexionBd.Usuario.Find(usuario.idUsuario);
                conexionBd.Usuario.Remove(usuario);
                conexionBd.SaveChanges();
            }
        }

        public List<Usuario> UserList()
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                List<Usuario> UserDataList = conexionBd.Usuario.ToList();
                return UserDataList;
            }
        }

        public Usuario Buscar(int Id)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                Usuario user = conexionBd.Usuario.Find(Id);

                return user;
            }
        }
    }
}