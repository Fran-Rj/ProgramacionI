using PlayMovieSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlayMovieSite.Service
{
    interface IUsuario
    {
        Usuario Buscar(int Id);

        void Create(Usuario usuario);

        void Delete(Usuario usuario);

        void Update(Usuario usuario);

        List<Usuario> UserList();
    }
}
