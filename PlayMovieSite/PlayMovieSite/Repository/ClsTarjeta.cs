using PlayMovieSite.Models;
using PlayMovieSite.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PlayMovieSite.Repository
{
    public class ClsTarjeta : ITarjeta
    {
        public void Create(Tarjeta tarjeta)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                try
                {
                    conexionBd.Tarjeta.Add(tarjeta);
                    conexionBd.SaveChanges();
                }
                catch (Exception ex)
                {

                }
            }
        }    

        public void Update(Tarjeta tarjeta)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                Tarjeta tarjt = conexionBd.Tarjeta.Find(tarjeta.idTarjeta);
                tarjt.numTarjeta = tarjeta.numTarjeta;
                conexionBd.SaveChanges();
            }
        }

        public void Delete(Tarjeta tarjeta)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                tarjeta = conexionBd.Tarjeta.Find(tarjeta.idTarjeta);
                conexionBd.Tarjeta.Remove(tarjeta);
                conexionBd.SaveChanges();
            }
        }

        public List<Tarjeta> CardList()
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                List<Tarjeta> TargetDataList = conexionBd.Tarjeta.ToList();
                return TargetDataList;
            }
        }

        public Tarjeta Buscar(int Id)
        {
            using (PlayMovieEntities1 conexionBd = new PlayMovieEntities1())
            {
                Tarjeta tarjeta = conexionBd.Tarjeta.Find(Id);

                return tarjeta;
            }
        }
    }
}