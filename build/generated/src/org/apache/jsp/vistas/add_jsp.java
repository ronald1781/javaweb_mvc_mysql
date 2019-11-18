package org.apache.jsp.vistas;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class add_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Agergar Persona</title>\n");
      out.write("                    <!-- Compiled and minified CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.css\">\n");
      out.write("                  <!-- Compiled and minified JavaScript -->\n");
      out.write("    <script src=\"https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.js\"></script>\n");
      out.write("      \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <nav class=\"nav-extended\">\n");
      out.write("    <div class=\"nav-wrapper\">\n");
      out.write("      <a href=\"#!\" class=\"brand-logo\">Logo</a>\n");
      out.write("      <ul class=\"right hide-on-med-and-down\">\n");
      out.write("        <li><a>A link</a></li>\n");
      out.write("        <li><a>A second link</a></li>\n");
      out.write("        <li><a>A third link</a></li>\n");
      out.write("      </ul>\n");
      out.write("    </div>\n");
      out.write("    <div class=\"nav-content\">\n");
      out.write("      <span class=\"nav-title\">Agregar Personal</span>\n");
      out.write("      \n");
      out.write("    </div>\n");
      out.write("  </nav> \n");
      out.write("         <div class=\"row\">\n");
      out.write("             <form class=\"col s12\" action=\"Persona_control_servlet\">\n");
      out.write("      <div class=\"row\">\n");
      out.write("        <div class=\"input-field col s12\">\n");
      out.write("          <i class=\"material-icons prefix\">account_circle</i>\n");
      out.write("          <input id=\"icon_prefix\" type=\"text\" class=\"validate\">\n");
      out.write("          <label for=\"icon_prefix\">Nombres</label>\n");
      out.write("        </div>\n");
      out.write("           <div class=\"input-field col s6\">\n");
      out.write("          <i class=\"material-icons prefix\">account_circle</i>\n");
      out.write("          <input id=\"icon_email\" type=\"email\" class=\"validate\">\n");
      out.write("          <label for=\"icon_prefix\">Correo</label>\n");
      out.write("          <span class=\"helper-text\" data-error=\"wrong\" data-success=\"right\">Helper text</span>\n");
      out.write("        \n");
      out.write("        </div>\n");
      out.write("        <div class=\"input-field col s6\">\n");
      out.write("          <i class=\"material-icons prefix\">phone</i>\n");
      out.write("          <input id=\"icon_telephone\" type=\"tel\" class=\"validate\">\n");
      out.write("          <label for=\"icon_telephone\">Telefono</label>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("        <button class=\"btn waves-effect waves-light\" type=\"submit\" name=\"action\" value=\"Agregar\">Agregar\n");
      out.write("    <i class=\"material-icons right\">send</i>\n");
      out.write("  </button>         \n");
      out.write("    </form>\n");
      out.write("  </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
