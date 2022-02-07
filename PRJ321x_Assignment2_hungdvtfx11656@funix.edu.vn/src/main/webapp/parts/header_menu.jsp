<%@ page import="model.Account" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<div class="header_menu mb-5">
    <div class="row justify-content-center align-items-center g-0">
        <div class="col-10 px-3">
            <div class="d-flex justify-content-between mx-3">
                <ul class="list-unstyled d-flex">
                    <li><a href="Controller?page=home">Home</a></li>
                    <li><a href="#">Product</a></li>
                    <li><a href="#">About us</a></li>
                </ul>
                <ul class="list-unstyled d-flex">
                    <%
                        if(session.getAttribute("user") != null) {
                    %>
                    <li>
                        <a href="Controller?page=admin" class="text-warning">
                            Welcome <strong><%=session.getAttribute("user")%></strong>
                        </a>
                    </li>
                    <li><a href="LogoutServlet">Logout</a></li>
                    <%
                        } else {
                    %>
                    <li><a href="Controller?page=login">Login</a></li>
                    <%
                        }
                    %>
                </ul>
            </div>
        </div>
    </div>
</div>
