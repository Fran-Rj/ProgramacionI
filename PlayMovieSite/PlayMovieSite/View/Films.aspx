<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP.Master" AutoEventWireup="true" CodeBehind="Films.aspx.cs" Inherits="PlayMovieSite.View.Premium" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">  
    <meta name="viewport" content="width=device-width" />
    <title>View</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="../JavaScript/JavaScript.js"></script>
    <style>
        body {
            background-color: black;
        }

        /* TITULO */
        .nombreSitio {
            background-color: blacK;
            margin-left: 120px;
        }

        .PlayMovie {
            width: 20%;
            display: flex;
            font-family: 'Book Antiqua';
        }

        #Play {
            font-weight: bold;
            color: #FECA76;
        }

        #Movie {
            font-weight: bold;
            color: white;
        }

        .subtitulo {
            display: flex;
            font-family: 'Book Antiqua';
            width: 30%;
        }

        #sientete {
            font-weight: bold;
            color: white;
        }

        #premium {
            font-weight: bold;
            color: #FECA76;
        }   

        /* PRESENTACION DE LAS PELICULAS */
        .container {
            background-color: black;
            margin-top: 30px;
            display: flex;
            justify-content: space-between;
            border-radius: 20px;
        }

        .Imagen {
            margin-top: 10px;
            width: 200px;
            height: 200px;
            text-align: center;
            border-radius: 50px;   
            justify-content: center;
        }

        .imagen {
            width: 160px;
            height: 160px;
            border-radius: 15px;
        }

        a {
            text-decoration: none;
        }

        .nameP {
            font-family: 'Book Antiqua';
            color: white;
            font-weight: bold;
            text-decoration: none;
        }

        .nameP:hover {
            color: gold;
            font-weight: bold;
            text-decoration: none;
        }

        Imagen, a:hover {
            color: gold;
            text-decoration: none;
        }

        /* CUENTA */
        .cuenta {
            justify-content: center;
            text-align: center;
            background-color: silver;
            width: 20%;
        }

        /* AVATAR */
        #avatar {
            width: 100px;
            height: 100px;
            border-radius: 50%;
        }

        #imgUserH {
            width: 50px;
            height: 50px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
<div class="nombreSitio">
        <div class="PlayMovie">
            <h1 id="Play">Play</h1>
            <h1 id="Movie">Movie</h1>
        </div>
        <div class="subtitulo">
            <h2 id="sientete">Siéntete &#160;</h2> @*&#160; Es para dar un espacio*@
            <h2 id="premium">Premium</h2>
        </div>
    </div>
    <div class="container">
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <asp:Image src="~/Imagenes/One Piece.jpg" class="imagen" alt="One Piece" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">One Piece</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <asp:img src="/Imagenes/Full Metal.jpg" class="imagen" alt="Full Metal" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Full Metal...</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/Jujutsu Kaisen.jpg" class="imagen" alt="Jkaisen" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Jujutsu...</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <asp:Image runat="server" Class="img-thumbnail" AlternateText="Goku" ImageUrl="~/Imagenes/Goku.png"/>
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Dragon...</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/Dr. Strange.jpg" class="imagen" alt="Strange" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Dr. Strange</h4>
            </a>
        </div>
    </div>
    <br />
    <div class="container">
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/Proyecto X.jpg" class="imagen" alt="Proyecto X" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Proyecto X</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/Son como niños.jpg" class="imagen" alt="Como Niños" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Son como niños</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/Pirañaconda.jpg" class="imagen" alt="Pirañaconda" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Pirañaconda</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/John Wick.jpg" class="imagen" alt="John Wick" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">John Wick</h4>
            </a>
        </div>
        <div class="Imagen">
            <a href="https://localhost:44303/View/Description">
                <img src="~/Imagenes/Carnada.jpg" class="imagen" alt="Carnada" />
            </a>
            <a href="https://localhost:44303/View/Description">
                <h4 class="nameP">Carnada</h4>
            </a>
        </div>
    </div>
</asp:Content>
