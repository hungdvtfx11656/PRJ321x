package controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminLogin", value = "/AdminLogin")
public class AdminLogin extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        try {
            String username = request.getParameter("username");
            String password = request.getParameter("password");
            String init_username = getServletContext().getInitParameter("username");
            String init_password = getServletContext().getInitParameter("password");
            if (username != null && password.equals(init_password) && username.equals(init_username)) {
                response.sendRedirect("home.jsp");
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                response.getWriter().println(
                    "<div class=\"alert alert-warning alert-dismissible fade show\" role=\"alert\">" +
                    "Invalid username or password" +
                    "<button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"alert\" aria-label=\"Close\"></button>" +
                    "</div>"
                );
                rd.include(request, response);
            }
        } catch (Exception e) {
            response.getWriter().println(e);
        }
    }
}
