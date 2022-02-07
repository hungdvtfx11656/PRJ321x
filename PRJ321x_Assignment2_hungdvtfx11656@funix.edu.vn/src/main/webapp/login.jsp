<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="parts/head_meta.jsp"%>
    <title>Admin</title>
    <%@ include file="parts/head_link.jsp"%>
</head>
<body>

<%@ include file="parts/header_search.jsp"%>
<%@ include file="parts/header_menu.jsp"%>
<jsp:include page="parts/body_login_form.jsp"></jsp:include>
<%
    String alert = (String) session.getAttribute("error");
    if(alert != null) {
%>
<div class="alert alert-warning alert-dismissible fade show mb-0" role="alert">
    <strong>Error! </strong><%=alert%>
    <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>
<%
    }
%>
<%@ include file="parts/footer_about.jsp"%>
<%@ include file="parts/footer_script.jsp"%>

</body>
</html>