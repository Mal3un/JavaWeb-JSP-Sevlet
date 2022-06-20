<%-- 
    Document   : adminInsertProduct
    Created on : May 9, 2022, 4:53:44 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pka-Tech</title>
    <link rel="icon" href="https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/ylqmkjuxia8d8dz7xkgo"
        type="image/x-icon">
    <title>InsertProduct</title>
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/admin.css">
    <link rel="stylesheet" href="assets/css/insert.css">
   
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<c:if test="${sessionScope.acc.id == 1}" >
    <body>
    
        <h1>
            Thêm sản phẩm
            <a href="adminqlsp.jsp" class="">
                <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
            </a>
        </h1>
        
        <div class="grid wide formmm">   
            
            <form action="adminInsert" method="POST">   
                <c:if test="${error != null}">
                    <div style="font-weight: bold; color:darkred ;background-color: pink;margin: 10px;padding: 10px;border-radius: 5px;border: 1px solid salmon" class="btn btn--primary">${error}</div> 
                </c:if>
                <span>Ảnh sản phẩm :</span> 
                <input type="text" name="anh"><br>
                <span>Tên sản phẩm :</span> 
                <input type="text" name="heading"><br>
                <span>Giá hiện tại :</span> 
                <input type="text" name="giamoi"><br>
                <span>Giá cũ :</span> 
                <input type="text" name="giacu"><br>
                <span>view :</span>            
                <input type="text" name="view"><br>
                <span>sale :</span>            
                <input type="text" name="sale"><br>
                <span>Phân loại :</span> 
                <select name="type" style="width: 42%;height: 30px;border-radius: 5px;">
                    <option value="1">Laptop</option>
                    <option value="2">Gaming Gear</option>         
                </select>     
                <button style="margin-top:20px;">Thêm sản phẩm</button>
            </form>
        </div>

    </body>
</c:if>
<c:if test="${sessionScope.acc.id != 1}" >
     <body>
    
        <h1>
            No Hope :)
        </h1>
       
    </body>   
</c:if>
    
</html>
