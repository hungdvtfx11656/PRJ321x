package controller;

import model.Account;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        try {
            request.getSession(true).invalidate();
//            Make sure that email is valid
            String regexMail = "^[A-Z0-9a-z]+@[A-Z0-9\\.a-z]+\\.[A-Za-z]{2,6}$";
            String regex = "[a-zA-Z0-9_!@#$%^&*]+";
//            Collect data from a login form
            String user = request.getParameter("username");
            String password = request.getParameter("password");
            Account acc = new Account();
            acc.setName(user);
            acc.setPwd(password);
            HttpSession session = request.getSession(true);
            if (!password.matches(regex) || !user.matches(regexMail)) {
                session.setAttribute("error", "invalid syntax");
                response.sendRedirect("login.jsp");
            }
//            Read information of account in web.xml
            String uid = getServletContext().getInitParameter("username");
            String pwd = getServletContext().getInitParameter("password");
//            Check account - use validate code to validate user
            if (user != null && acc.getPwd().equals(pwd) && acc.getName().equalsIgnoreCase(uid)) {
//                Set session
                session.setAttribute("user", user);
//                Set cookies
                if (request.getParameter("remember") != null) {
                    Cookie c_username = new Cookie("username", user);
                    Cookie c_password = new Cookie("password", password);
                    c_username.setMaxAge(60*60*24);
                    c_password.setMaxAge(60*60*24);
                    response.addCookie(c_username);
                    response.addCookie(c_password);
                }
//                Login is valid, now redirect to index page of admin
                response.sendRedirect("admin.jsp");
            } else {
                session.setAttribute("error", "wrong username or password");
                response.sendRedirect("login.jsp");
            }
        } catch (NullPointerException e) {
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        } catch (Exception e) {
            response.getWriter().println(e);
        }
    }

}

