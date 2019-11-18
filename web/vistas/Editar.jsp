<%-- 
    Document   : Editar
    Created on : 18/11/2019, 10:28:26 AM
    Author     : rramos
--%>

<%@page import="Modelo.Persona"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Personal</title>
          <!-- Compiled and minified CSS -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.css">
        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.js"></script>
       
    </head>
    <body>
             
            <nav class="nav-extended">
                <div class="nav-wrapper">
                    <a href="#!" class="brand-logo">Logo</a>
                    <ul class="right hide-on-med-and-down">
                        <li><a>A link</a></li>
                        <li><a>A second link</a></li>
                        <li><a>A third link</a></li>
                    </ul>
                </div>
                <div class="nav-content">
                    <span class="nav-title">Modificar Personal</span>

                </div>
            </nav>
        <div class="container">
            <div class="row">
                <%
                PersonaDAO dao=new PersonaDAO();
                int id=Integer.parseInt((String)request.getParameter("codper"));
                 System.out.println("Error listp Editar "+id);
                Persona p=(Persona)dao.list(id);
                %>
               
                <form class="col s12" action="Persona_control_servlet">
                    <input type="hidden" id="txtcodper" name="txtcodper" value="<%=p.getID() %>">
                    <div class="row">
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">account_circle</i>-->
                            <select name="tdoc">
                                <option value="" selected >--Seleccione--</option>
                                <option value="1">DNI</option>
                                <option value="2">MILITAR</option>
                                <option value="3">EXTRAJERAO</option>
                            </select>
                            <label>Tipo Documento</label>
                        </div>
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">account_circle</i>-->
                            <input id="icon_ndoc" type="text" class="validate" name="txtndoc" value="<%=p.getDNI() %>" autofocus="">
                            <label for="icon_prefix">Numero Documento</label>
                        </div>
                        <div class="input-field col s12">
                            <!--<i class="material-icons prefix">account_circle</i>-->
                            <input id="icon_prefix" type="text" class="validate" name="txtnomper" value="<%=p.getNombre() %>">
                            <label for="icon_prefix">Nombres</label>
                        </div>
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">account_circle</i>-->
                            <input id="icon_email" type="email" class="validate" name="txtemal" value="<%=p.getEmail() %>">
                            <label for="icon_prefix">Correo</label>
                        </div>
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">phone</i>-->
                            <input id="icon_telephone" type="tel" class="validate" name="txttelf" value="<%=p.getTelefono() %>">
                            <label for="icon_telephone">Telefono</label>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light" type="submit" name="accion" value="actualziar">Actualizar
                        <!--<i class="material-icons right">send</i>-->
                    </button>
                     <a class="waves-effect waves-light btn" href="Persona_control_servlet?accion=listar" >Regresar</a>       
                </form>
            </div>

        </div>
    </body>
</html>
