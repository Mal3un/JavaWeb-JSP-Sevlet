<%-- 
    Document   : editproduct
    Created on : May 10, 2022, 5:54:18 PM
    Author     : admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/ylqmkjuxia8d8dz7xkgo"
        type="image/x-icon">
    <title>document</title>
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/insert.css">
</head>
<c:if test="${sessionScope.acc.id == 1}" >
    <body>
        <h1>

            sửa tài khoản <a href="adminqltk.jsp" class="">
                <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
            </a>

        </h1>

        <div class="grid wide formmm">

            <form action="updateAccount?url=adminqltk.jsp" method="POST">
                <input type="hidden" name="uid" value="${account.id}">
                <span>Name :</span> 
                <input type="text" name="name" value="${account.name}"><br>
                <span>Username :</span> 
                <input type="text" name="username" value="${account.username}"><br>
                <span>Pass:</span> 
                <input type="text" name="passwword" value="${account.passwword}"><br>
                <span>Email :</span>          
                <input type="text" name="email" value="${account.email}"><br>
                <span>Phone :</span>          
                <input type="text" name="phone" value="${account.phone}"><br>  
                <span>Address :</span>          
                <input type="text" name="address" value="${account.address}"><br>  
                <button style="margin-top:20px">Sửa sản phẩm</button>
            </form>
        </div>
    </body>
</c:if>
<c:if test="${sessionScope.acc.id != 1}" >
    <body>
        <h1>
              No Hope

        </h1>
   
    </body>
</c:if>


</html>
