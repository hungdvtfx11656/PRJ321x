<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<div class="py-2 py-md-5">
    <div class="row justify-content-center align-items-center g-0 px-3">
        <div class="col-12 col-md-8">
            <h1 class="text-primary text-center">PRJ321x</h1>
            <h5 class="text-black-50 text-center">Assignment 4</h5>
        </div>
    </div>
</div>
<div class="bg-primary">
    <div class="row justify-content-center align-items-center px-md-3 g-0">
        <div class="col-sm-12 col-md-8 col-lg-6 px-3 py-2">
            <div class="menu">
                <ul class="list-unstyled d-flex text-white align-items-center mb-0">
                    <li><a href="home.html" class="text-white btn btn-success mx-2 d-none d-md-block">Home</a></li>
					<c:choose>					
						<c:when test = "${username == null}">
							<li><a href="login.html" class="text-white btn btn-success mx-2">Login</a></li>
						</c:when>
					   	<c:otherwise>
					   		<li><a href="logout.html" class="text-white btn btn-danger mx-2">Logout</a></li>
					    	<li><span class="text-warning mx-3">Welcome ${username}</span></li>
					   	</c:otherwise>
					</c:choose>                    
                </ul>
            </div>
        </div>
        <div class="col-sm-12 col-md-4 col-lg-4 px-3 py-2">
            <div class="input-group">
                <input type="text" name="" id="" class="form-control border-0 bg-light text-center" placeholder="Enter keywords...">
                <button class="btn bg-light text-black-50">
                    <i class="fa fa-search px-2"></i>
                </button>
            </div>
        </div>
    </div>
</div>
