<%-- 
    Document   : index
    Created on : 26-04-2022
    Author     : Alison Cielo Alaro Vino
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="estilo.css" rel="stylesheet" type="text/css">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            background-color:#F4ECF7;
            text-align: center;
            font-family: Times New Roman;}
    </style>
    <body>
        <h1>¡BIENVENIDO AL MENÚ PRINCIPAL!</h1>
        <h3>Seleccione la opción deseada</h3>
        <div class="main-container">

            <img src="imagenes/aviso.png" alt="Avisos" width="230" height="230">
            <a href="AvisoController" class="btn2 btn-green"><b>LISTA DE AVISOS</b></a>
            
            <img src="imagenes/usuarios.png" alt="Usuarios" width="230" height="230"> 
            <a href="UsuarioController" class="btn2 btn-red"><b>LISTA DE USUARIOS</b></a>
            
        </div>
    </body>
</html>
