<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<div class="py-5">
    <div class="row justify-content-center g-0 px-3">
        <div class="col-12 col-md-6 col-lg-4">
            <form action="login.html" method="post">
                <div>
                 	<input type="hidden" name="action" value="formsubmit"/>
                </div>
                <div class="mb-3">
                    <label for="username" class="form-label">Username</label>
                    <input type="text" class="form-control" id="username" name="username">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" class="form-control" id="password" name="password">
                </div>
                <div class="mb-3 form-check">
                    <input type="checkbox" class="form-check-input" id="remember">
                    <label class="form-check-label" for="remember">Remember me</label>
                </div>
                <button type="submit" class="btn btn-primary w-100 mb-3">Submit</button>
            </form>
            <div class="d-flex justify-content-between align-items-center">
                <button type="button" class="btn btn-danger mb-3">Cancer</button>
                <p>Forgot <a href="#" class="text-primary">password</a>?</p>
            </div>
        </div>
    </div>
</div>
