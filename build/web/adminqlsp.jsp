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
    <link rel="icon" href="https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/ylqmkjuxia8d8dz7xkgo"
        type="image/x-icon">
    <title>Document</title>
    <link rel="stylesheet" href="./assets/css/admin.css">
    <link rel="stylesheet" href="./assets/css/grid.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        th {
            background-color: #026db5;
            color: white;
            height: 40px;
        }
        tr:nth-child(even) {
            background-color: rgba(190, 190, 190, 0.31); ;
        }
    </style>
</head>
<c:if test="${sessionScope.acc.id == 1}" >
    <body>
        <h1>       
            Trang Quản lý sản phẩm (`-')
            ${messupdate}
            <a href="admin.jsp" class="">
                <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
            </a>
        </h1>
        <ul>
            <c:if test="${messupdate} != null" >
                <li>
                    <<h1>${messupdate}</h1>
                </li>
            </c:if>
            
            <li>
                <a class="btn_them" href="adminInsertProduct.jsp">Thêm mới sản phẩm</a>
            </li>
            <li class="timkiem" >
                <caption>
                    <form action="searchadm">
                        <input style="background-color:white;padding: 0 10px;" class="timkiem" type="search" name="search" value="" placeholder="Nhập điều cần tìm kiếm">                   
                    </form>               
                </caption>
            </li>
        </ul>

        <div class="grid wide thongtin"> 
            <table border="collapse" width="100%" cellspacing>
                <tr>
                    <th>Mã</th>
                    <th width=20%;>Tên</th>                     
                    <th width=25%;>Ảnh</th>
                    <th>Giá mới</th>
                    <th>Giá cũ</th>
                    <th>View</th>
                    <th>Sale</th>
                    <th>Thể loại</th>
                    <th>Sửa</th>
                    <th>Xóa</th>
                </tr>
                    <c:if test="${searchadmin == null}" >
                        <jsp:useBean id="a" class="loaddata.DAO" scope="request"></jsp:useBean>
                        <c:forEach items="${a.allproductAdmin}" var ="i">
                            <tr>
                                <td>${i.id}</td>
                                <td>${i.heading}</td>
                                <td><img width=200px; src="${i.img}" alt=""></td>
                                <td>
                                    <c:set var = "balance" value = "${i.giamoi}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                    vnđ                                    
                                </td>
                                <td>
                                    <c:set var = "balance" value = "${i.giacu}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                    vnđ 
                                </td>                           
                                <td>${i.view}</td>
                                <td>${i.sale}%</td>
                                <c:if test="${i.categoryid == 1}" >
                                    <td>Laptop </td>
                                </c:if>
                                <c:if test="${i.categoryid == 2}" >
                                    <td>Gaming Gear</td>
                                </c:if>

                                <td>
                                    <a href="editp?ma=${i.id}" class="btn_sua">
                                        Sửa
                                    </a>             
                                </td>
                                <td>
                                    <a class ="btn_xoa" href="deleteproduct?ma=${i.id}">
                                        Xóa
                                    </a>             
                                </td>
                            </tr>
                        </c:forEach>                   
                    </c:if>
                    <c:if test="${searchadmin != null}" >               
                       <c:forEach items="${searchadmin}" var ="i">
                           <tr>
                               <td>${i.id}</td>
                               <td>${i.heading}</td>
                               <td><img width=200px; src="${i.img}" alt=""></td>
                               <td>
                                    <c:set var = "balance" value = "${i.giamoi}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                    vnđ                                    
                                </td>
                                <td>
                                    <c:set var = "balance" value = "${i.giacu}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                    vnđ 
                                </td>            
                               <td>${i.view}</td>
                               <td>${i.sale}%</td>
                               <c:if test="${i.categoryid == 1}" >
                                    <td>Laptop</td>
                                </c:if>
                                <c:if test="${i.categoryid == 2}" >
                                    <td>Gaming Gear</td>
                                </c:if>
                               <td>
                                   <a href="editp?ma=${i.id}" class="btn_sua">
                                       Sửa
                                   </a>             
                               </td>
                               <td>
                                   <a class ="btn_xoa" href="deleteproduct?ma=${i.id}">
                                       Xóa
                                   </a>             
                               </td>
                           </tr>
                       </c:forEach>
                    </c:if>
            </table>
        </div>
    </body>
</c:if>
<c:if test="${sessionScope.acc.id != 1}" >
    <body>
        <h1>       
            No Hope (`-')         
        </h1>       
    </body>
</c:if>

</html>
