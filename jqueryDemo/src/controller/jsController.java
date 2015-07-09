package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class jsController
 */
@WebServlet({"/js/hello.do","/js/var.do","/js/func.do"
			,"/js/object.do","/js/bom.do","/js/operator.do"
			,"/js/dom.do","/js/closure.do","/js/pattern.do"
			,"/js/casting.do"})
public class jsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		
		process(request, response);
	}

	protected void process(HttpServletRequest request, 
		       HttpServletResponse response) throws ServletException, IOException {
		    request.setCharacterEncoding("UTF-8");
		    String path = request.getServletPath().substring(+1);
		    String url ="";
		    
		    switch (path) {
		    case "js/hello.do"		: url="hello.jsp";		break;	   
		    case "js/var.do"		: url="var.jsp"; 		break;
		    case "js/func.do"		: url="func.jsp"; 		break;
		    case "js/object.do" 	: url="object.jsp";		break;
		    case "js/bom.do"		: url="bom.jsp";		break;
		    case "js/operator.do"	: url="operator.jsp"; 	break;
		    case "js/dom.do" 		: url="dom.jsp"; 		break;
		    case "js/closure.do"    : url="closure.jsp";	break;		
		    case "js/pattern.do"	: url="pattern.jsp";	break;
		    case "js/casting.do"	: url="casting.jsp";	break;
		    default: break;
		    }
		    
		RequestDispatcher dispatcher = 
				request.getRequestDispatcher("/view/javascript/"+url);
		dispatcher.forward(request, response);
	}
		
}
