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
        tr{
            height:50px;
        }
    </style>
</head>
<c:if test="${sessionScope.acc.id == 1}" >
    <body>
        <h1>       
            Trang Quản lý hóa đơn (`-')
            ${messupdate}
            <a href="admin.jsp" class="">
                <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
            </a>
        </h1>
        <ul style="margin:0;padding:0;">
            <c:if test="${messupdate} != null" >
                <li>
                    <<h1>${messupdate}</h1>
                </li>
            </c:if>            
            <li class="timkiem" >
                <caption>
                    <form action="searchbilladmin2" method="POST">
                           
                        <input style="background-color:white;padding: 0 10px;" class="timkiem" type="search" name="search" value="" placeholder="Nhập điều cần tìm kiếm">                   
                    </form>               
                </caption>
            </li>           
        </ul>
            <div  style="margin:40px 0;display:flex;justify-content: center;text-align: center">
                <a class="choduyet" href="adminqlhd.jsp" style=" margin:0 15px ; text-align: center; display:inline-block;background-color: #4267b2;width: 100px;max-width: 120px;border-radius: 10px; ">Chờ duyệt</a>
                <a class="daduyet" href="adminqlhd2.jsp" style="margin:0 15px ; text-align: center; display:inline-block;background-color: #35aa52;width: 100px;max-width: 120px;border-radius: 10px;">Đã duyệt</a>        
            </div>
            <div  class="grid wide thongtin"> 
            <table border="collapse" width="100%" cellspacing>
                <tr height="50px">
                    <th ">Mã hóa đơn</th>
                    <th ">Mã khách hàng</th>                     
                    <th>Tổng tiền</th>
                    <th>Ngày đặt</th>
                    <th>Trạng thái</th>
                    <th>Chi tiết</th>
                    <th>#</th>
                    
                </tr>
                    <c:if test="${SearchingBill == null}" >
                        <jsp:useBean id="a" class="loaddata.DAO" scope="request"></jsp:useBean>
                        <c:forEach items="${a.allbillStatus1}" var ="i">
                            <tr>
                                <td>${i.id}</td>
                                <td>${i.idKh}</td>
                                <td style="color: #e91919">
                                    <c:set var = "balance" value = "${i.tongtien}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                    vnđ
                                </td>
                                <td>${i.date}</td>                           
                                <td style="background-color: #35aa52;">${i.status}</td>
                                <td>
                                    <a style="font-size:18px; color: #35aa52" href="chitiethoadon?bid=${i.id}" class="btn_sua">
                                        Chi tiết đơn hàng
                                    </a>
                                </td>
                                <td>
                                    <a class ="btn_xoa" href="DeleteBill?bid=${i.id}&url=adminqlhd2.jsp">
                                        Xóa
                                    </a>             
                                </td>
                            </tr>
                        </c:forEach>                   
                    </c:if>
                    <c:if test="${SearchingBill != null}" >
                        <c:forEach items="${SearchingBill}" var ="i">
                            <tr>
                                <td>${i.id}</td>
                                <td>${i.idKh}</td>
                                <td style="color: #e91919">
                                    <c:set var = "balance" value = "${i.tongtien}" />
                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                    vnđ
                                </td>
                                <td>${i.date}</td>                           
                                <td>${i.status}</td>   
                                <td>
                                    <a style="font-size:18px; color: #35aa52" href="chitiethoadon?bid=${i.id}" class="btn_sua">
                                        Chi tiết đơn hàng
                                    </a>
                                </td>
                                <td>
                                    <a class ="btn_xoa" href="DeleteBill?bid=${i.id}&url=adminqlhd2.jsp">
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
