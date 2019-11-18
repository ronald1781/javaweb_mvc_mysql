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
                <span class="nav-title">Lista Personal</span>
                <a href="Persona_control_servlet?accion=add" class="btn-floating btn-large halfway-fab waves-effect waves-light teal">
                    <i class="material-icons">add</i>
                </a>
            </div>
        </nav>
        <div class="container">   
            <table class="responsive-table">
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
                        int cont=0;
                        while (iter.hasNext()) {
                            cont=cont+1;
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
                            <a class="waves-effect waves-light btn" href="Persona_control_servlet?accion=editar&id=<%=per.getID() %>" >Editar</a>
                            <a class="waves-effect waves-light btn">Remove</a>
                        </td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
    </body>
</html>
