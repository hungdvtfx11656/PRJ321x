<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
    String username = "";
    String password = "";
    Cookie[] cookies = request.getCookies();
    if (cookies != null) {
        for (Cookie cookie : cookies) {
            if(cookie.getName().equals("username")) {
                username = cookie.getValue();
            }
            if(cookie.getName().equals("password")) {
                password = cookie.getValue();
            }
        }
    }
%>
<div class="login_form">
    <div class="row justify-content-center g-0">
        <div class="col-6">
            <div class="row py-5">
                <div class="col-6">
                    <h2 class="text-center mb-3">Sign in</h2>
                    <form action="LoginServlet" method="post">
                        <div class="mb-3">
                            <input type="text" name="username" id="username" class="form-control bg-light" placeholder="Your email address" value="<%=username%>">
                        </div>
                        <div class="mb-3">
                            <input type="password" name="password" id="password" class="form-control bg-light" placeholder="Your password" value="<%=password%>">
                        </div>
                        <div class="mb-3 form-check">
                            <input type="checkbox" class="form-check-input" id="remember" name="remember">
                            <label class="form-check-label" for="remember">Remember me</label>
                        </div>
                        <div class="d-flex justify-content-center">
                            <button type="submit" class="btn btn-primary rounded-pill w-50">Login</button>
                        </div>
                    </form>
                </div>
                <div class="col-6">
                    <h2 class="text-center mb-3">Welcome back!</h2>
                    <p class="text-center">To keep connected with us please login with your personal info</p>
                </div>
            </div>
        </div>
    </div>
</div>
