<%-- 
    Document   : admin
    Created on : May 9, 2022, 4:14:33 PM
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
    <title>Pka-Tech</title>
    <link rel="icon" href="https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/ylqmkjuxia8d8dz7xkgo"
        type="image/x-icon">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/grid.css">
    <link rel="stylesheet" href="./assets/css/admin.css">
</head>
<c:if test="${sessionScope.acc.id == 1}" >
    <body>
    
            <h1 style="text-align:center">  
                Trang Admin ('-`)
                <a href="index.jsp" class="">
                    <img width=40px; style="float: right;margin-right:40px; "; src="https://www.freeiconspng.com/thumbs/sign-out-icon/sign-out-icon-7.png" alt="">
                </a>
            </h1>            
            <div class="grid wide homepage"> 
                    <a href="adminqlsp.jsp" class="qlsp" href="">Quản lý sản phẩm</a>

                    <a href="adminqltk.jsp"class="qltk" href="">Quản lý tài khoản</a>
                    
                    <a href="adminqlhd.jsp"class="qlhd" href="">Quản lý đơn đặt hàng</a>

            </div>
    </body>  
</c:if>
<c:if test="${sessionScope.acc.id != 1}" >
    <body>   
        <h1 style="text-align:center">  
            No Hope :)
        </h1>
    </body>
</c:if>

</html>

