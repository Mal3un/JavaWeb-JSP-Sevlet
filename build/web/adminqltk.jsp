<%-- 
    Document   : adminqlsp
    Created on : May 9, 2022, 4:20:40 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        th {
            background-color: #026db5;
            color: white;
            height: 40px;
        }
        tr{
            height:50px;
        }
        /* tr:nth-child() {background-color: #f2f2f2;} */
    </style>
</head>
<c:if test="${sessionScope.acc.id == 1}" >
    <body>
        <h1>
            Trang Quản lý tài khoản ('-')
            <a href="admin.jsp" class="">
                <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
            </a>
        </h1>
        <ul>
            <li>
                <a class="btn_them" href="./adminInsertTk.jsp">Tạo tài khoản</a>
            </li>
            <li class="timkiem" >
                <caption>
                    <form action="searchtkadmin">
                        <input style="background-color:white;padding: 0 10px;" class="timkiem" type="search" name="search" value="" placeholder="Nhập điều cần tìm kiếm">
                    </form>
                </caption>
            </li>
        </ul>

        <div class="grid wide homepage"> 

            <table   cellpadding="10px"width="100%"  cellspacing="">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th width=10%>Username</th>
                    <th width=10%>Password</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Address</th>
                    <th width=7%>Sửa</th>
                    <th width=7%>Xóa</th>
                </tr>
                    <c:if test="${searchtkadmin == null}" >
                        <jsp:useBean id="tk" class="loaddata.DAO" scope="request"></jsp:useBean>
                        <c:forEach items="${tk.qltk}" var ="i">
                            <tr>
                                <td style="height:10px;">${i.id}</td>
                                <td >${i.name}</td>
                                <td >${i.username}</td>
                                <td >
                                    
                                    <input style="width:60%; height:20px; border-radius:5px; border:none;" type="password" value="${i.passwword}"></input>
                                </td>
                                <td >${i.email}</td>
                                <td>
                                    ******<fmt:formatNumber maxIntegerDigits="3" type="number" pattern="###" value="${i.phone}" />                                             
                                </td>
                                <td >${i.address}</td>
                                <td style="margin:4px">
                                    <a href="editaccount?uid=${i.id}&url=editaccount.jsp" class="btn_sua">
                                        Sửa
                                    </a>             
                                </td>
                                <td style="margin:4px">
                                    <a class ="btn_xoa" href="deleteAccount?uid=${i.id}">
                                        Xóa
                                    </a>             
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>
                    <c:if test="${searchtkadmin != null}" >               
                       <c:forEach items="${searchtkadmin}" var ="i">
                            <tr>
                                <td style="height:10px;">${i.id}</td>
                                <td >${i.name}</td>
                                <td >${i.username}</td>
                                <td >
                                    <input style="width:60%; height:20px; border-radius:5px; border:none;" type="password" value="${i.passwword}"></input>
                                </td>
                                <td >${i.email}</td>
                                <td >${i.phone}</td>
                                <td >${i.address}</td>
                                <td style="margin:4px">
                                    <a href="editaccount?uid=${i.id}" class="btn_sua">
                                        Sửa
                                    </a>             
                                </td>
                                <td style="margin:4px">
                                    <a class ="btn_xoa" href="deleteAccount?uid=${i.id}">
                                        Xóa
                                    </a>             
                                </td>
                            </tr>
                        </c:forEach>
                    </c:if>       
            </div>
    </body>
</c:if>
<c:if test="${sessionScope.acc.id != 1}" >
    <body>
        <div>Không du quyen truy cap</div>
   
    </body>
</c:if>
    
</html>
