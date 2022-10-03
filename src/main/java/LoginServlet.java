

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	   
    private static final long serialVersionUID = 1L;      
   
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
   
    // From login.jsp, as a post method only the credentials are passed
    // Hence the parameters should match both in jsp and servlet and
      // then only values are retrieved properly
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    	String username = request.getParameter("username");
        String password = request.getParameter("password");

        // Check if username and password are valid (root, root)
        if (username != null && username.equalsIgnoreCase("root") && password != null && password.equalsIgnoreCase("root")) {
        	response.sendRedirect("QueryLauncher.jsp");
        }
        else {// Send user to try again
        	response.sendRedirect("LoginFailed.jsp");
        }
    }
}