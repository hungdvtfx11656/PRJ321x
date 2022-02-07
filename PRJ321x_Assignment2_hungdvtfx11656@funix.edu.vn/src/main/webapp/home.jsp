<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="parts/head_meta.jsp"%>
    <title>Home</title>
    <%@ include file="parts/head_link.jsp"%>
</head>
<body>

<%@ include file="parts/header_search.jsp"%>
<%@ include file="parts/header_menu.jsp"%>
<jsp:include page="parts/body_product_list.jsp"></jsp:include>
<%@ include file="parts/footer_about.jsp"%>
<%@ include file="parts/footer_script.jsp"%>

</body>
</html>