<%@page import="com.sun.xml.internal.messaging.saaj.packaging.mime.util.BEncoderStream"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"
    import="org.json.JSONObject,org.json.JSONException,java.util.*"%>
    <%@ page import="Bean.BeanAlumno"%>
 <%@ page import="mysql.Sql_Alumno"%>
 <%@ page import="util.ToolLista"%>
    
    <%
      	ToolLista lis_usu=new ToolLista();
          	 Sql_Alumno sql= new Sql_Alumno();
          	 BeanAlumno bean= new BeanAlumno();
              lis_usu = sql.listarUsuarios();
      %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximun-scale=1.0, minimum-scale=1.0">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="img/flechas.png">
        <link rel="stylesheet" href="WEBHTML/css/bootstrap.min.css" >
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="WEBHTML/fontawesome-free-5.0.13/web-fonts-with-css/css/fontawesome-all.min.css">
<title>JSON OBJECT</title>
<h2>JSON in JSP</h2>
</head>
<body style="background-color: #00B4FF">
<% for(int i=0;i<lis_usu.getTamanio();i++)
      {bean=(BeanAlumno)lis_usu.getElemento(i);
      %>    
<%
    JSONObject object = new JSONObject();

    object.put("idAlumno", bean.getIdAlumno());
    object.put("DNI", bean.getDNI());
    object.put("Nombres", bean.getNombres());
    object.put("Apellidos", bean.getApellidos());
    object.put("Direccion", bean.getDireccion());
    object.put("Telefono", bean.getTelefono());
    object.put("Edad", bean.getEdad());
    object.put("Grado",bean.getGrado());
    object.put("Sexo", bean.getSexo());   
    int length = object.length();    
    
%>
<%
    out.println(object);
%>
<br />
<%
    out.println("-----------------------------");
%>
<br />
<%
    out.println("Cantidad de Datos: " + length);
%>
<br />
<%
    out.println("-----------------------------");
%>
<br />
<%
    out.println("Lista de Datos del Alumno:");
%>
<br />
<%
    out.println("-----------------------------");
%>
<br />
<%
    out.println("idAlumno: " + bean.getIdAlumno());
%>
<br />
<%
    out.println("DNI: " + bean.getDNI());
%>
<br />
 
<%
    out.println("Nombres: " + bean.getNombres());
%>
<br />
 
<%
    out.println("Apellidos: " + bean.getApellidos());
%>
<br />
 
<%
    out.println("Direccion: " + bean.getDireccion());
%>
<br />
 
<%
    out.println("Telefono: " + bean.getTelefono());
%>
<br />
 
<%
    out.println("Edad: " + bean.getEdad());
%>
<br />
 
<%
    out.println("Grado: " + bean.getGrado());
%>
<br />
 
<%
    out.println("Sexo: " + bean.getSexo());
%>
<br /> 
<%
    out.println("-----------------------------");
%>
<br /> 
<br /> 
<% } %>
<br/>
</body>
</html>