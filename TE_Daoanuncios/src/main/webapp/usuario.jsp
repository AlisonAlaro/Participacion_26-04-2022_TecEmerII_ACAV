<%-- 
    Document   : usuario
    Created on : 29-04-2022
    Author     : Alison Cielo Alaro Vino
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Usuarios"%>
<%
    List<Usuarios> usuario = (List<Usuarios>) request.getAttribute("usuario");
%>

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
            background-color:#FEF9E7;
            text-align: center;
            font-family: Times New Roman;}

    </style>
    <body>
        <h2>LISTA DE USUARIOS</h3>
        <p><a href="UsuarioController?action=add" class="btn btn-green">Nuevo Usuario</a></p>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>CORREO ELECTRÓNICO</th>
                <th>CLAVE</th>
                <th>MODIFICAR</th>
                <th>ELIMINAR</th>
            </tr>
            </thead>
            <c:forEach var="item" items="${usuario}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.nombre}</td>
                    <td>${item.correo}</td>
                    <td>${item.clave}</td>
                    <td><a href="UsuarioController?action=edit&id=${item.id}" class="btn btn-green">Modificar</a></td>
                    <td><a href="UsuarioController?action=delete&id=${item.id}" class="btn btn-red">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>
        <a class="btn3 btn-red" href="index.jsp">Volver a Inicio</a>
    </body>
</html>
