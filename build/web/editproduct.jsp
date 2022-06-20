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

            Sửa sản phẩm <a href="adminqlsp.jsp" class="">
                <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
            </a>

        </h1>

        <div class="grid wide formmm">

            <form action="updateproduct" method="POST">
                <c:if test="${error != null}">
                    <div style="font-weight: bold; color:darkred ;background-color: pink;margin: 10px;padding: 10px;border-radius: 5px;border: 1px solid salmon" class="btn btn--primary">${error}</div> 
                </c:if>
                <input type="hidden" name="ma" value="${product.id}">
                <span>Ảnh sản phẩm :</span> 
                <input type="text" name="anh" value="${product.img}"><br>
                <span>Tên sản phẩm :</span> 
                <input type="text" name="heading" value="${product.heading}"><br>
                <span>Giá hiện tại :</span> 
                <input type="text" name="giamoi" value="${product.giamoi}"><br>
                <span>Giá cũ :</span> 
                <input type="text" name="giacu" value="${product.giacu}"><br>
                <span>view :</span>            
                <input type="text" name="view" value="${product.view}"><br>
                <span>sale :</span>            
                <input type="text" name="sale" value="${product.sale}"><br>
                <span>Phân loại :</span>
                <c:if test="${product.categoryid == 1}">
                    <select name="type" style="width: 42%;height: 30px;border-radius: 5px;">
                    <option value="1">Laptop</option>
                    <option value="2">Gaming Gear</option>         
                </select>  
                </c:if>
                <c:if test="${product.categoryid == 2}">
                    <select name="type" style="width: 42%;height: 30px;border-radius: 5px;">
                    <option value="2">Gaming Gear</option>
                    <option value="1">Laptop </option>         
                </select>  
                </c:if> 
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
