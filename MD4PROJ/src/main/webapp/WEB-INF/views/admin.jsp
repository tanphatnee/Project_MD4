<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: ADMIN
  Date: 5/14/2023
  Time: 9:33 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Boxicons -->
    <link href='https://unpkg.com/boxicons@2.0.9/css/boxicons.min.css' rel='stylesheet'>
    <!-- My CSS -->
    <link rel="stylesheet" href="/css/tyle.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <title>Admin</title>
</head>
<body>


<!-- SIDEBAR -->
<section id="sidebar">
    <h2 href="#" class="brand">
        <span class="text">ADMIN</span>
    </h2>
    <ul class="side-menu top">
        <li class="active">
            <a href="#">
                <i class='bx bxs-dashboard' ></i>
                <span class="text">Dashboard</span>
            </a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/userController/getAll">
                <i class='bx bxs-shopping-bag-alt' ></i>
                <span class="text">User Manager</span>
            </a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/productController/getAll">
                <i class='bx bxs-doughnut-chart' ></i>
                <span class="text">Product Manager</span>
            </a>
        </li>
        <li>
            <a href="<%=request.getContextPath()%>/catalogController/getAll">
                <i class='bx bxs-doughnut-chart' ></i>
                <span class="text">Catalog Manager</span>
            </a>
        </li>
    </ul>
    <ul class="side-menu">
        <li>
            <a href="<%=request.getContextPath()%>/userController/logout" class="logout">
                <i class='bx bxs-log-out-circle' ></i>
                <span class="text">Logout</span>
            </a>
        </li>
    </ul>
</section>
<!-- SIDEBAR -->



<!-- CONTENT -->
<section id="content">
    <main>
        <div class="head-title">
            <div class="left">
                <h1>Dashboard</h1>
            </div>
        </div>

        <ul class="box-info">
            <li>
                <i class='bx bxs-group' ></i>
                <span class="text">
						<h3>0 order</h3>
						<p>Show Detail</p>
					</span>
            </li>
            <li>
                <i class='bx bxs-dollar-circle' ></i>
                <span class="text">
						<h3>${sumMonth}$</h3>
						<p>Total Sales Current Month</p>
					</span>
            </li>
            <li>
                <i class='bx bxs-dollar-circle' ></i>
                <span class="text">
						<h3>${sum}$</h3>
						<p>Total Sales</p>
					</span>
            </li>
        </ul>
    </main>
</section>
<script src="/script.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

</body>
</html>