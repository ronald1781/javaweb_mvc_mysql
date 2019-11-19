/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import Modelo.Persona;
import ModeloDAO.PersonaDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "Persona_control_servlet", urlPatterns = {"/Persona_control_servlet"})
public class Persona_control_servlet extends HttpServlet {

    String listar = "vistas/listar.jsp";
    String add = "vistas/add.jsp";
    String edit = "vistas/edit.jsp";
    Persona p = new Persona();
    PersonaDAO dao = new PersonaDAO();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Persona_control_servlet</title>");
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Persona_control_servlet at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String acceso = "";
        String action = request.getParameter("accion");
        
        if (action.equalsIgnoreCase("listar")) {
            acceso = listar;
        } else if (action.equalsIgnoreCase("add")) {
            acceso = add;
        } else if (action.equalsIgnoreCase("agregar")) {
            String tdoc = request.getParameter("tdoc");
            String dni = request.getParameter("txtndoc");
            String nomper = request.getParameter("txtnomper");
            String emlper = request.getParameter("txtemal");
            String tlfper = request.getParameter("txttelf");
            p.setDNI(dni);
            p.setNombre(nomper);
            p.setEmail(emlper);
            p.setTelefono(tlfper);
            dao.add(p);
            acceso = listar;
        } else if (action.equalsIgnoreCase("editar")) {
            request.setAttribute("idper", request.getParameter("id"));
            acceso = edit;
           
        } else if (action.equalsIgnoreCase("actualziar")) {
            int id = Integer.parseInt(request.getParameter("txtcodper"));
            String tdoc = request.getParameter("tdoc");
            String dni = request.getParameter("txtndoc");
            String nomper = request.getParameter("txtnomper");
            String emlper = request.getParameter("txtemal");
            String tlfper = request.getParameter("txttelf");
            p.setID(id);
            p.setDNI(dni);
            p.setNombre(nomper);
            p.setEmail(emlper);
            p.setTelefono(tlfper);
            dao.edit(p);
            acceso = listar;
        }else if(action.equalsIgnoreCase("eliminar")){
        int id= Integer.parseInt(request.getParameter("id"));
        p.setID(id);
        dao.dele(id);
        acceso = listar;
        }else if(action.equalsIgnoreCase("buscar")){
        String dato = request.getParameter("buscarper");
        List<Persona>lista=dao.buscar(dato);
        request.setAttribute("datos",lista);
        }
        RequestDispatcher vista = request.getRequestDispatcher(acceso);
        vista.forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
