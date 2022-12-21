<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
    <meta name="description" content=""/>
    <meta name="author" content=""/>
    <title>Dashboard - SB Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet"/>
    <link href="${pageContext.request.contextPath}/admin/css/styles.css" rel="stylesheet"/>
    <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
</head>
<style>
    table tr td {
        text-align: center;
    }
</style>
<body class="sb-nav-fixed">
<!-- --------------------------------------------NAV_BAR--------------------------------------------- -->
<%@ include file="navbar.jsp"%>
<!-- --------------------------------------------NAV_BAR--------------------------------------------- -->
<!-- -------------------------------------------------MAIN--------------------------------------------------- -->
<div id="layoutSidenav">
    <!-- -----------------------------------------------------------SIDE-BAR----------------------------------------------- -->
    <%@include file="sidebar.jsp"%>
    <!-- ------------------------------------------------------SIDE-BAR----------------------------------------------- -->
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid px-4">
                <h1 class="mt-4"><c:out value="${nameCategory}"/></h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item active"><c:out value="${nameCategory}"/></li>
                </ol>
                <div class="card mb-4">
                    <div class="card-header">
                        <i class="fas fa-table me-1"></i>
                        <c:out value="${nameCategory}"/>
                    </div>
                    <!-- ---------------------------------------------TABLE---------------------------------------------------- -->
                    <div class="card-body">
                        <table id="datatablesSimple">
                            <thead>
                            <tr>
                                <th style="text-align: center;">STT</th>
                                <th style="text-align: center;">NAME</th>
                                <th style="text-align: center;">IMAGE</th>
                                <th style="text-align: center;">VIEWS</th>
                                <th style="text-align: center;">CREAT AT</th>
                                <th style="text-align: center;">UPDATE AT</th>
                                <th style="text-align: center;">ACTION</th>
                            </tr>
                            </thead>
                            <tbody>
                            <% int stt = 1; %>
                            <c:forEach items="${listFilm}" var="film">
                                <tr>
                                    <td style="text-align: center;"><%= stt++ %></td>
                                    <td style="text-align: center;">
                                        <a href="/admin/episode?id=${film.getId()}"><c:out value="${film.getName()}"/></a>
                                    </td>
                                    <td style="text-align: center;">
                                        <img src="${pageContext.request.contextPath}${film.getImage()}"
                                             alt=""
                                             style="width: 100px; height: 131px"
                                        >
                                    </td>
                                    <td style="text-align: center;"><c:out value="${film.getViews()}"/></td>
                                    <td style="text-align: center;"><c:out value="${film.getConvertCreateAt()}"/></td>
                                    <td style="text-align: center;"><c:out value="${film.getConvertUpdateAt()}"/></td>
                                    <th style="text-align: center">
                                        <a href="#">
                                            <img style="margin-right: 20px;" src="${pageContext.request.contextPath}/admin/assets/img/delete.png"
                                                         width="15px" height="15px" alt="">
                                        </a>
                                        <a href="#">
                                            <img src="${pageContext.request.contextPath}/admin/assets/img/update.png" width="15px" height="15px" alt="">
                                        </a>
                                    </th>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                    <!-- ---------------------------------------------TABLE---------------------------------------------------- -->
                </div>
            </div>
        </main>
        <footer class="py-4 bg-light mt-auto">
            <div class="container-fluid px-4">
                <div class="d-flex align-items-center justify-content-between small">
                    <div class="text-muted">Copyright &copy; Your Website 2022</div>
                    <div>
                        <a href="#">Privacy Policy</a>
                        &middot;
                        <a href="#">Terms &amp; Conditions</a>
                    </div>
                </div>
            </div>
        </footer>
    </div>
</div>
<!-- -------------------------------------------------MAIN--------------------------------------------------- -->
<%@include file="script.jsp" %>
</body>
</html>
