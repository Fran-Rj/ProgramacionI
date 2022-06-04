<%@ Page Title="" Language="C#" MasterPageFile="~/View/MP.Master" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="PlayMovieSite.View.Perfil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="body" runat="server">
       <div class="container">
        <fieldset class="row">
            <div class="container text-black-50 row">
                <div class="col-6 row justify-content-center">
                    <div class="align-items-center col-auto">
                        <fieldset>
                            <div class="row">
                                <asp:Image runat="server" ID="image" CssClass="form-control img-thumbnail" Height="300" />
                            </div>
                            <br />
                            <div class="row">
                                <asp:FileUpload runat="server" ID="FUImage" CssClass="form-control form-control-sm" />
                            </div>
                            <br />
                            <div class="row">
                                <asp:Button runat="server" ID="BtnAplicar" CssClass="form-control btn btn-dark" Text="Aplicar Cambios" OnClick="BtnAplicar_Click" />
                            </div>
                        </fieldset>
                    </div>
                    <div class="row">
                        <asp:Label runat="server" CssClass="alert-danger" ID="lblError"></asp:Label>
                    </div>
                </div>
                <div class="col-6 row justify-content-center">
                    <div class="align-items-center col-auto">
                        <fieldset>
                            <legend>
                                <i class="fa fa-database">Datos personales</i>
                            </legend>
                            <asp:Table runat="server" Enabled="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Nombres:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbNombre" />
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Apellidos:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbApellidos" />
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <%-- NUEVO CAMPO --%>
                            <%--<asp:TableRow>
                                <asp:TableCell>
                                    <asp:Button runat="server" CssClass="form-control btn btn-warning" width="170px" ID="BtnCambiarDatos" Text="Cambiar datos" OnClick="BtnCambiarDatos_Click"></asp:Button>
                                </asp:TableCell>
                                <asp:TableCell>
                                    <asp:Button runat="server" CssClass="form-control btn btn-success" ID="BtnGuardarDatos" width="85px" Text="Guardar" OnClick="BtnGuardarDatos_Click" Visible="false"></asp:Button>
                                </asp:TableCell>
                            </asp:TableRow>
                            <asp:Table runat="server" ID="informacion" Visible="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Nombre:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbNombres" placeholder="Nuevo nombre"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>--%>
                            <%-- FIN --%>
                        </fieldset>
                        <br />
                        <fieldset>
                            <legend>
                                <i class="fa fa-key">Datos de sesion</i>
                            </legend>
                            <asp:table runat="server">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Usuario:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbUsuario" Enabled="false"/>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Button runat="server" CssClass="form-control btn btn-warning" ID="BtnCambiar" Text="Cambiar contraseña" OnClick="BtnCambiar_Click"></asp:Button>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:Button runat="server" CssClass="form-control btn btn-success" ID="BtnGuardar" Text="Guardar" OnClick="BtnGuardar_Click" Visible="false"></asp:Button>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:table>
                            <asp:Table runat="server" ID="contrasenia" Visible="false">
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Contraseña:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbClave" placeholder="Contraseña nueva" TextMode="Password"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                                <asp:TableRow>
                                    <asp:TableCell>
                                        <asp:Label runat="server" CssClass="col-form-label" Text="Repetir contraseña:"></asp:Label>
                                    </asp:TableCell>
                                    <asp:TableCell>
                                        <asp:TextBox runat="server" CssClass="form-control" ID="tbClave2" placeholder="Repetir contraseña" TextMode="Password"></asp:TextBox>
                                    </asp:TableCell>
                                </asp:TableRow>
                            </asp:Table>
                            <asp:Label runat="server" ID="lblErrorClave" CssClass="alert-danger"></asp:Label>
                        </fieldset>
                    </div>
                </div>
            </div>
        </fieldset>
        <br />
        <br />
        <div class="container d-flex justify-content-end">
            <asp:Button runat="server" class="btn btn-danger" Text="Eliminar cuenta" OnClick="Eliminar"/>
        </div>
    </div>
</asp:Content>