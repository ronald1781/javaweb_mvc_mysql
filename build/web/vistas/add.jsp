<%-- 
    Document   : add
    Created on : 18/11/2019, 10:26:32 AM
    Author     : rramos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agergar Persona</title>
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
                    <span class="nav-title">Agregar Personal</span>

                </div>
            </nav>
        <div class="container">
            <div class="row">
                <form class="col s12" action="Persona_control_servlet">
                    
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
                            <input id="icon_ndoc" type="text" class="validate" name="txtndoc" value="" autofocus="">
                            <label for="icon_prefix">Numero Documento</label>


                        </div>
                        <div class="input-field col s12">
                            <!--<i class="material-icons prefix">account_circle</i>-->
                            <input id="icon_prefix" type="text" class="validate" name="txtnomper" value="">
                            <label for="icon_prefix">Nombres</label>
                        </div>
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">account_circle</i>-->
                            <input id="icon_email" type="email" class="validate" name="txtemal" value="">
                            <label for="icon_prefix">Correo</label>

                        </div>
                        <div class="input-field col s6">
                            <!--<i class="material-icons prefix">phone</i>-->
                            <input id="icon_telephone" type="tel" class="validate" name="txttelf" value="">
                            <label for="icon_telephone">Telefono</label>
                        </div>
                    </div>
                    <button class="btn waves-effect waves-light" type="submit" name="accion" value="Agregar">Agregar
                        <!--<i class="material-icons right">send</i>-->
                    </button>         
                </form>
            </div>

        </div>
    </body>
</html>
