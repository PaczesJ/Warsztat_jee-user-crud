<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">

<head>
    <%@ include file="/users/header.jsp" %>
</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <%@ include file="/users/sideBar.jsp" %>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <div id="content">

            <!-- Topbar -->
            <%@ include file="/users/topBar.jsp" %>
            <!-- End of Topbar -->

            <!-- Begin Page Content -->
            <div class="container-fluid">
                <!-- Page Heading -->
                <div class="d-sm-flex align-items-center justify-content-between mb-4">
                    <h1 class="h3 mb-0 text-gray-800">UsersCRUD</h1>
                    <a href='<c:url value="/user/add"/>' class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                            class="fas fa-download fa-sm text-white-50"></i> Dodaj użytkownika</a>
                </div>

                <!--UsersCRUD -->
                <div class="card shadow mb-4">
                    <div class="card-header">
                        <h6 class="m-0 font-weight-bold text-primary">Lista użytkowników</h6>
                    </div>
                    <div class="card-body">
                        <table class="table">
                            <thead>
                            <th>Id</th>
                            <th>Nazwa Użytkownika</th>
                            <th>Email</th>
                            <th>Akcja</th>
                            </thead>
                            <c:forEach items="${users}" var="user">
                                <tr>
                                    <td>${user.id}</td>
                                    <td>${user.userName}</td>
                                    <td>${user.email}</td>
                                    <td><a target="_blank" rel="nofollow"
                                           href='<c:url value="/user/delete?id=${user.id}"/>'>Usuń</a>
                                        <a target="_blank" rel="nofollow"
                                           href='<c:url value="/user/edit?id=${user.id}"/>'>Edytuj</a>
                                        <a target="_blank" rel="nofollow"
                                           href='<c:url value="/user/show?id=${user.id}"/>'>Pokaż</a>
                                    </td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- End of Main Content -->

        <!-- Footer -->
        <%@ include file="/users/footer.jsp" %>
        <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Bootstrap core JavaScript-->
<script src="/theme/vendor/jquery/jquery.min.js"></script>
<script src="/theme/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/theme/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/theme/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/theme/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="/theme/js/demo/chart-area-demo.js"></script>
<script src="/theme/js/demo/chart-pie-demo.js"></script>

</body>

</html>
