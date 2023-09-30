<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://callidora.lk/jsp/template-inheritance" prefix="layout" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>MealHut | Admin Panel</title>
  <layout:block name="style">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css"/>
    <link rel="stylesheet" href="${BASE_URL}assets/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="${BASE_URL}assets/css/admin/mealhut.admin.css"/>
    <link rel="shortcut icon" href="${BASE_URL}assets/images/app/mealhut.png" type="image/x-icon">
  </layout:block>
</head>

<body class="graphite-theme">
<!-- PreLoader -->
<jsp:include page="../backend/include/preloader.jsp"/>

<!-- NavBar -->
<layout:block name="header"></layout:block>

<!-- Dynamic Content -->
<layout:block name="content"></layout:block>

<!-- Footer -->
<jsp:include page="../backend/include/footer.jsp"/>

<!-- SCRIPT FILES -->
<script src="${BASE_URL}assets/js/bootstrap.bundle.min.js"></script>
<layout:block name="script">
  <script src="${BASE_URL}assets/js/admin/mealhut.admin.js"></script>
</layout:block>
</body>

</html>
