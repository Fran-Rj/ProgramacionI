using PlayMovieSite.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PlayMovieSite.Service
{
    interface ITarjeta
    {
        void Create(Tarjeta tarjeta);

        void Update(Tarjeta tarjeta);

        void Delete(Tarjeta tarjeta);

        List<Tarjeta> CardList();

        Tarjeta Buscar(int Id);
    }
}
