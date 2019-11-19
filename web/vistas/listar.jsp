<%-- 
    Document   : listar
    Created on : 18/11/2019, 10:26:46 AM
    Author     : rramos
--%>

<%@page import="java.util.Iterator"%>
<%@page import="Modelo.Persona"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDAO.PersonaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista Persona</title>
        <!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <link href="asest/css/bootstrap.css" rel="stylesheet" type="text/css"/></head>
    <body>

        <div class="container-fluid">
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand" href="#">CRUD_JAVA</a>
            </nav>

            <div class="row">
                <div class="col-sm">
                    <a class="btn btn-primary btn-lg" href="Persona_control_servlet?accion=add">Nuevo</a>
                </div>
                <div class="col-sm">

                </div>
                <div class="col-sm">
                    <form class="form-inline" action="Persona_control_servlet">
                        <label class="sr-only" for="buscarper">Buscar Persona</label>
                        <input type="search" class="form-control mb-2 mr-sm-2" id="buscarper" name="buscarper" placeholder="Buscar Persona">
                        <button type="submit" name="accion" value="buscar" class="btn btn-success mb-2">Buscar</button>
                    </form>
                </div>
            </div>


            <table class="table table-bordered">
                <thead>
                    <tr>  
                        <th>Nro</th>
                        <th>DNI</th>
                        <th>Nombre</th>
                        <th>Email</th>
                        <th>Telefono</th>
                        <th>Estado</th>
                        <th class="center-align">Accion</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        String estado, est;
                        PersonaDAO dao = new PersonaDAO();
                        List<Persona> list = dao.listar();
                        Iterator<Persona> iter = list.iterator();
                        Persona per = null;
                        int cont = 0;
                        while (iter.hasNext()) {
                            cont = cont + 1;
                            per = iter.next();
                    %>
                    <tr>
                        <td><%=cont%></td>
                        <td><%=per.getDNI()%></td>
                        <td><%=per.getNombre()%></td>
                        <td><%=per.getEmail()%></td>
                        <td><%=per.getTelefono()%></td>
                        <td><%=per.getEstado()%></td> 
                        <td>
                            <a class="btn btn-info" href="Persona_control_servlet?accion=editar&id=<%=per.getID()%>"><i class="small material-icons left">edit</i>Editar</a>
                            <a class="btn btn-danger" href="Persona_control_servlet?accion=eliminar&id=<%=per.getID()%>">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        <script src="asest/js/bootstrap.js" type="text/javascript"></script>
    </body>
</html>
