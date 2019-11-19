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
           <!--Import Google Icon Font-->
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
         <link href="asest/css/bootstrap.css" rel="stylesheet" type="text/css"/></head>
       
       
    </head>
    <body>
             <div class="container-fluid">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">CRUD_JAVA</a>
        </nav>

        <div class="jumbotron">
            <div class="container">
                <%
                PersonaDAO dao=new PersonaDAO();
                int id=Integer.parseInt((String)request.getAttribute("idper"));                 
                Persona p=(Persona)dao.list(id);
                %>
                <form action="Persona_control_servlet">
                    <input type="hidden" id="txtcodper" name="txtcodper" value="<%=p.getID() %>">
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputEmail4">Tipo Documento</label>
                            <select name="tdoc" class="form-control">
                                <option value="" selected >--Seleccione--</option>
                                <option value="1">DNI</option>
                                <option value="2">MILITAR</option>
                                <option value="3">EXTRAJERAO</option>
                            </select>
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Numero Documento</label>
                            <input id="txtndoc" type="text" class="form-control" name="txtndoc" value="<%=p.getDNI() %>" autofocus="">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inputAddress">Nombres</label>
                        <input id="icon_prefix" type="text" class="form-control" name="txtnomper" value="<%=p.getNombre() %>">
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Correo</label>
                            <input id="txtemal" type="email" class="form-control" name="txtemal" value="<%=p.getEmail() %>">
                        </div>
                        <div class="form-group col-md-6">
                            <label for="inputPassword4">Telefono</label>
                            <input id="txttelf" type="tel" class="form-control" name="txttelf" value="<%=p.getTelefono()%>">
                        </div>
                    </div>
                    <br>
                    <button class="btn btn-success btn-lg" type="submit" name="accion" value="actualziar">Actualziar
                    </button>
                     <a class="btn btn-outline-secondary" href="Persona_control_servlet?accion=listar" >Regresar</a>
                </form>    
            </div>
        </div>
    </div>
            <script src="asest/js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>
