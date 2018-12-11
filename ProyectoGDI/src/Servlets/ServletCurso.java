package Servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Bean.BeanCurso;
import mysql.Sql_Curso;

/**
 * Servlet implementation class ServletCurso
 */
@WebServlet(name = "ServletCurso", urlPatterns = {"/ServletCurso"})
public class ServletCurso extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String idCurso=request.getParameter("idCurso");
		String Curso=request.getParameter("Curso");
		
		BeanCurso cu= new BeanCurso();
		cu.setIdCurso(idCurso);
		cu.setCurso(Curso);
		
		Sql_Curso dci = new Sql_Curso();
		
		if ("Agregar".equals(request.getParameter("btnAgregar"))) 
	    {
		 ////////////
			 try 
				{
					dci.ingresar(cu);
					System.out.println("Haz presionado el boton agregar");
					response.sendRedirect("Cursos.jsp");
					
				} catch (Exception e) 
				{
					e.printStackTrace();
				}
			 
	     ////////////	 
	    } 
	 else if ("Modificar".equals(request.getParameter("btnModificar"))) 
	    {
		 ////////////
	    	  try 
				{
	    		    dci.modificar(cu);
	    		    System.out.println("Haz presionado el boton modificar");
	    		    response.sendRedirect("Cursos.jsp");
					
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	    	  ////////////
	      } 
	 else if("Eliminar".equals(request.getParameter("btnEliminar")))
	 {
		 
		 try
		 {
			 dci.eliminar(cu);
			 System.out.println("Haz presionado el boton eliminar");
			 response.sendRedirect("Cursos.jsp");
		 }catch (Exception e) {
			 e.printStackTrace();
		 }
	 }
	 else {
		 System.out.println("error");
	 }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
