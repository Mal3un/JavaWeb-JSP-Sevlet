<%-- 
    Document   : fullgiohang
    Created on : May 11, 2022, 9:40:41 AM
    Author     : mduc0
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
    <title>Pka-Tech</title>
    <link rel="icon" href="https://res.cloudinary.com/crunchbase-production/image/upload/c_lpad,f_auto,q_auto:eco,dpr_1/ylqmkjuxia8d8dz7xkgo"
        type="image/x-icon">
    
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/base.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/giohangfull.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    
    <c:if test="${status != null}">
        <script>
            alert("Đơn đặt hàng của bạn đã được gửi , xin chờ quản trị viên duyệt !");            
        </script>
    </c:if>
    <div class="main">
        <div class="header">
            <div class="grid wide">
                <div class="header__navbar">
                    <div class="header__menu hide-on-mobile ">
                        <div class="header__menu-list">
                            <span class="menu-list__icon">
                                <i class="fa-solid fa-bars"></i>
                            </span>
                            <span class="menu-list__text">
                                Menu
                            </span>
                            <div class="menu__product row sm-gutter">
                                <div class="col l-10 m-12 c-12">
                                    <div class="menu__product-home">
                                        <div class="row sm-gutter ">
                                            <div class="col l-3 m-6 c-6">
                                                <div class="menu__product-item">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6">
                                                <div class="menu__product-item">
                                                    <span class="menu__product-name-type">
                                                        Gaming Gear
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            Chuột Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Headphone 
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Bàn phím Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Tay cầm chơi game
                                                        </li>
                                                        
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6">
                                                <div class="menu__product-item">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6 ">
                                                <div class="menu__product-item no-border">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6">
                                                <div class="menu__product-item">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6">
                                                <div class="menu__product-item">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6">
                                                <div class="menu__product-item">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="col l-3 m-6 c-6 ">
                                                <div class="menu__product-item no-border">
                                                    <span class="menu__product-name-type">
                                                        LapTop
                                                    </span>
                                                    <ul class="menu__product-type">
                                                        <li class="menu__product-type-item">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item">
                                                            LapTop Cũ
                                                        </li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col l-2 menu_product-ads hide-on-mobile-tablet">
                                    <div class="menu_product-ads-list">
                                        <img src="https://theme.hstatic.net/1000233206/1000806987/14/sidebarleft_bgmegamenu5.jpg?v=306"
                                            alt="" class="menu_product-ads-img">
                                        <img src="https://theme.hstatic.net/1000233206/1000806987/14/sidebarleft_bgmegamenu6.jpg?v=306"
                                            alt="" class="menu_product-ads-img">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="header__logo ">
                        <a href="index.jsp" class="header__logo-list">
                            <img src="assets/img/Logo-DH-Phenikaa-H-VN.png" alt=""
                                class="logo-list__img">
                        </a>
                    </div>
                    <div class="header__search hide-on-mobile-tablet">
                        <div class="header__search-list">
                            <input type="text" placeholder="Tìm kiếm sản phẩm" class="search-list__input">

                            </input>
                            <a href="" class="search-list__btn">
                                <i class="search-list__btn--icon fa-solid fa-magnifying-glass"></i>
                            </a>
                        </div>
                    </div>
                    <div class="header__about ">
                        <a class="header__adress hide-on-mobile-tablet"
                            href="https://www.google.com/maps/place/Tr%C6%B0%E1%BB%9Dng+%C4%90%E1%BA%A1i+h%E1%BB%8Dc+PHENIKAA/@20.9612466,105.7452841,17z/data=!3m1!4b1!4m5!3m4!1s0x313452efff394ce3:0x391a39d4325be464!8m2!3d20.9612416!4d105.7474728">
                            <span class="header__adress--icon">
                                <i class="fa-solid fa-map"></i>
                            </span>
                            <span class="header__adress--text">ĐỊA CHỈ:
                                Yên nghĩa - Hà Đông - Hà Nội</span>
                        </a>
                        <div class="header__search-mobile  hide-on-pc">
                            <div class="header__search-mobile-list">
                                <span class="header__search-mobile-list--icon">
                                    <i class="fa-solid fa-magnifying-glass"></i>
                                </span>
                                <span class="header__search-mobile-list--text">
                                    Tìm Kiếm
                                </span>
                                <div class="header__search-mobile-form">
                                    <div class="header__search-mobile-list-body">
                                        <input type="text" placeholder="Tìm kiếm sản phẩm"
                                            class="search-mobile-list__input">

                                        </input>
                                        <a href="" class="search-mobile-list__btn">
                                            <i class="search-list__btn--icon fa-solid fa-magnifying-glass"></i>
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="header__login hide-on-mobile ">
                            <div class="header__login-list">
                                <span class="header__login-list--icon">
                                    <i class="fa-solid fa-user"></i>
                                </span>
                                <c:if test="${sessionScope.acc == null}" >
                                    <span class="header__login-list--text">
                                        Đăng nhập
                                    </span>
                                </c:if>
                                <c:if test="${sessionScope.acc != null}" >
                                    <span class="header__login-list--text">
                                        ${acc.username}
                                    </span>
                                </c:if>
                                <c:if test="${sessionScope.acc == null}" >
                                    <div class="header__login-form">
                                        <form action="">
                                            <div class="header__login-form-heading">
                                                <span class="form-heading-title">ĐĂNG NHẬP</span>
                                                <div class="header__login-form-law">
                                                    <span class="header__login-form-law-text">
                                                        Google and
                                                        <a href="" class="header__login-form-law-link">Privacy Policy</a>
                                                        and
                                                        <a href="" class="header__login-form-law-link">Terms of Service</a>
                                                        apply.
                                                    </span>
                                                </div>
                                            </div>
                                            <div class="header__login-form-body">
                                                <!-- <input type="text" class="header__login-form-email" placeholder="Username">
                                                <input type="password" class="header__login-form-password"
                                                    placeholder="Password"> -->

                                                <a href="login.jsp" class="header__login-form-btn btn btn--primary">Đăng Nhập</a>
                                                <div class="header__login-form-more">
                                                    <span class="header__login-form-register">
                                                        Khách hàng mới ?
                                                        <a href="register.jsp" class="header__login-form-register-link">Đăng ký ngay</a>
                                                    </span>
                                                    <span class="header__login-form-forgot-password">
                                                        Quên mật khẩu ?
                                                        <a href="" class="header__login-form-forgot-password-link">Khôi phục mật
                                                            khẩu</a>
                                                    </span>
                                                </div>

                                            </div>
                                        </form>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.acc != null}" >
                                    <div class="header__login-form">
                                        <c:if test="${sessionScope.acc.id != 1}" >
                                            <form action="">
                                                <div style="margin-bottom: 0px" class="header__login-form-heading">            
                                                        <a href="qltk.jsp" style="color:black" class="form-heading-title">Thông tin chi tiết </a>                                           
                                                </div>
                                                <div class="header__login-form-body">
                                                    <!-- <input type="text" class="header__login-form-email" placeholder="Username">
                                                    <input type="password" class="header__login-form-password"
                                                        placeholder="Password"> -->

                                                    <div class="header__login-form-more">
                                                        <span style="font-size: 13px;" class="header__login-form-register">
                                                            Tên khách hàng:
                                                            <h4 style="margin-top: 5px;margin-bottom: 5px;font-size: 13px" href="register.jsp" class="header__login-form-register-link">${acc.name}</h4>
                                                        </span>
                                                        <span style="font-size: 13px; "class="header__login-form-forgot-password">
                                                            Email:
                                                            <h4 style="margin-top: 5px;margin-bottom: 5px; font-size: 13px" href="" class="header__login-form-forgot-password-link">${acc.email}</h4>
                                                        </span>
                                                    </div>
                                                    <!--<a style="width: 50%;"href="login.jsp" class="header__login-form-btn btn btn--primary">Thông tin chi tiết</a>-->
                                                     <a href="logout" class="header__login-form-btn btn btn--primary">Đăng xuất</a>

                                                </div>
                                            </form>
                                        </c:if>
                                        <c:if test="${sessionScope.acc.id == 1}" >
                                            <form action="">
                                                <div style="margin-bottom: 0px" class="header__login-form-heading">            
                                                        <a href="qltk.jsp" style="color:black" class="form-heading-title">ADMIN</a>                                           
                                                </div>
                                                <div class="header__login-form-body">
                                                    <div class="header__login-form-more">
                                                        <span style="font-size: 13px;" class="header__login-form-register">
                                                            ADMIN:
                                                            <h4 style="margin-top: 5px;margin-bottom: 5px;font-size: 13px" href="register.jsp" class="header__login-form-register-link">${acc.name}</h4>
                                                        </span>      
                                                    </div>
                                                    <a href="admin.jsp" class="header__login-form-btn btn btn--primary">Trang Quản Lý</a>                                             
                                                    <a href="logout" class="header__login-form-btn btn btn--primary">Đăng xuất</a>
                                                </div>
                                            </form>
                                        </c:if>
                                    </div>
                                </c:if>
                            </div>
                        </div>
                        
                    </div>
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="container1 ">
                <div class="grid wide">
                    <div class="container1-menu row no-gutters ">
                        <div class="col l-1 m-2 c-2">
                            <a href="../index.html" class="container1-home-btn ">
                                <span class="container1-home-btn-icon">
                                    <i class="fa-solid fa-house-chimney"></i>
                                </span>
                            </a>
                        </div>
                        <div class="col l-11 m-10 c-10">
                            <div class="container1-hot-event">
                                <ul class="container1-hot-event-list">
                                    <li class="container1-hot-event-item">
                                        Sự kiện 1
                                    </li>
                                    <li class="container1-hot-event-item">
                                        Sự kiện 2
                                    </li>
                                    <li class="container1-hot-event-item">
                                        Sự kiện 3
                                    </li>
                                    <li class="container1-hot-event-item">
                                        Sự kiện 4
                                    </li>
                                    <li class="container1-hot-event-item">
                                        Sự kiện 5
                                    </li>
                                    <li class="container1-hot-event-item">
                                        Sự kiện 6
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        <div class="content">
            <div class="grid wide">
                <div class="html-cart-header row">
                    <div class="col l-12 m-12 c-12 ">
                        <div class="html-cart-title">
                            <h1 class="html-cart-text">GIỎ HÀNG</h1>
                            <i class="fa-solid fa-cart-shopping"></i>
                        </div>
                    </div>
                </div>
                <div class="html-cart-container row no-gutters">
                    <div class="html-cart-body-title">
                        <div style="border-left: 1px solid #08609a;border-top:1px solid #08609a;" class="col l-2 m-2 c-2 title-main">
                            <div class="img-product">
                                <h1 class="img-product-title">Sản Phẩm</h1>  
                            </div>
                           
                        </div>
                        <div style="border-top:1px solid #08609a" class="col l-5 m-5 c-5 title-main">
                            <div class="name-product ">
                                <h1 class="name-product-title">Tên sản phẩm</h1>  
                            </div>
                            
                        </div>
                        <div style="border-top:1px solid #08609a" class="col l-2 m-2 c-1 title-main">
                            <div class="sl-product ">
                                <h1 class="sl-product-title">Số lượng</h1>  
                            </div>                          
                        </div>
                        <div style="border-top:1px solid #08609a" class="col l-2 m-2 c-3 title-main">
                            <div class="price-product ">
                                <h1 class="price-product-title">Giá tiền</h1>  
                            </div>                          
                        </div>
                        <div style="border-right: 1px solid #08609a;border-top:1px solid #08609a;" class="col l-1 m-1 c-1 title-main">
                            <div class="clear-product ">
                                <h1 class="clear-product-title">Xóa</h1>  
                            </div>                          
                        </div>                       
                    </div>
                    <div class="html-cart-body-no-product">
                        <img src="https://taphoa.cz/static/media/cart-empty-img.8b677cb3.png" alt="" class="no-product">
                        <h1 class="no-product-title">Không có sản phẩm</h1>
                    </div>
                    <div class="html-cart-content-product">
                    <jsp:useBean id="giohang" class="loaddata.DAO" scope="request"></jsp:useBean>
                    
                    <c:forEach items="${giohang.cartlist(sessionScope.acc.id)}" var ="i">
                        <div class="html-cart-body-product">
                            <div class="product-1 ">
                                <div class="col l-2 m-2 c-2 product1-main">
                                    <div class="img-product1">
                                         <img src="${i.img}" alt="" class="img-product1">
                                    </div>

                                </div>
                                <div class="col l-5 m-5 c-5 product1-main">
                                    <div class="name-product1">
                                        ${i.heading}
                                    </div>

                                </div>
                                <div class="col l-2 m-2 c-1 product1-main">
                                    <div class="sl-product1">
                                        <!--<input type="button" style="padding:2px 4px;margin-right: 10px;color:red;" class="sanpham-buy-quality-minus" value="-">-->
                                        <jsp:useBean id="qlt" class="loaddata.DAO" scope="request"></jsp:useBean>
                                        <c:set var = "balance" value = "${qlt.getQualityPcart(acc.id,i.id)}"/>
                                        ${balance}
                                        <!--<input type="button" style="padding:2px;margin-left: 10px;color:red" class="sanpham-buy-quality-plus" value="+">-->
                                    </div>                          
                                </div>
                                <div class="col l-2 m-2 c-3 product1-main">
                                    <div style="color: #ff1a1a;font-weight: bold" class="price-product1">
                                        
                                        <c:set var = "balance" value = "${i.giamoi}" />
                                        <fmt:formatNumber  type = "number" pattern = "###,###,###" value = "${balance}" />
                                        vnđ
                                    </div>                          
                                </div>
                                <div class="col l-1 m-1 c-1 product1-main">
                                    <a style="text-decoration: none;font-weight: bold;" href="deletecartByuser?url=giohang.jsp&uid=${sessionScope.acc.id}&pid=${i.id}" class="clear-product1">
                                        Xóa
                                    </a>                          
                                </div>                            
                            </div>   
                        </div>
                                        
                    </c:forEach>
                    </div>                    
                    <div class="html-cart-bill ">                 
                        <div class="col l-9 m-9 c-6 bill-main">
                            <h1 class="bill-title">Tổng cộng</h1>
                        </div>
                        <div class="col l-3 m-3 c-6 bill-main">                           
                            <h1 style="font-weight: bold;font-size: 18px;" class="bill-price-all"></h1>                           
                        </div>
    
                    </div>
                    <div class="html-cart-payment">
                        <a style="height: 40px;" href="index.jsp" class="html-cart-payment-back btn ">Mua sắm tiếp</a>
                        <a style="height: 40px;" href="dathang?uid=${sessionScope.acc.id}" class="html-cart-payment-go btn btn--primary">Ðặt hàng</a>            
                    </div>
                </div>
            </div>
        </div>
        <div class="footer">
            <div class="grid wide">
                <div class="footer1 row">
                    <div class="footer1-item col l-3 m-6 c-6">
                        <i class="footer1-icon1 fa-solid fa-truck-fast"></i>
                        <div class="footer1-body">
                            <h1 class="footer1-title1">Chính sách giao hàng</h1>
                            <span class="footer1-decoration1">Nhận hàng và thanh toán tại nhà </span>
                        </div>        
                    </div>
                    <div class="footer1-item col l-3 m-6 c-6">
                        <i class="footer1-icon1 fa-solid fa-arrows-rotate"></i>
                        <div class="footer1-body">
                            <h1 class="footer1-title1">Đổi trả dễ dàng</h1>
                            <span class="footer1-decoration1">1 đổi 1 trong 15 ngày</span>
                        </div>        
                    </div>
                    <div class="footer1-item col l-3 m-6 c-6">
                        <i class="footer1-icon1 fa-solid fa-credit-card"></i>
                        
                        <div class="footer1-body">
                            <h1 class="footer1-title1">Thanh toán tiện lợi</h1>
                            <span class="footer1-decoration1">Tiền mặt, chuyển khoản, trả góp</span>
                        </div>        
                    </div>
                    <div class="footer1-item col l-3 m-6 c-6">
                        <i class="footer1-icon1 fa-solid fa-comments"></i>       
                        <div class="footer1-body">
                            <h1 class="footer1-title1">Tư vấn nhiệt tình </h1>
                            <span class="footer1-decoration1">Giải đáp mọi câu hỏi của khách hàng</span>
                        </div>        
                    </div>
                </div>
                <div class="footer2 row">
                    <div class="footer2-item col l-3 m-6 c-6">
                        <h1 class="footer2-title2">Về PKA chúng tôi</h1>
                        <div class="footer2-body">
                            <a href="" class="footer2-body-link">Giới thiệu đôi nét về PKA</a>
                            <a href="" class="footer2-body-link">Các đối tác kinh doanh của PKA</a>
                            <a href="" class="footer2-body-link">Thông tin tuyển dụng của PKA</a>
                            <a href="" class="footer2-body-link">Nguồn cảm hứng của PKA</a>
                            <a href="" class="footer2-body-link">Chính sách làm việt của PKA</a>
                        </div>
                    </div>
                    <div class="footer2-item col l-3 m-6 c-6">
                        <h1 class="footer2-title2">Hỗ trợ khách hàng</h1>
                        <div class="footer2-body">
                            <a href="" class="footer2-body-link">Tư vấn sản phẩm </a>
                            <a href="" class="footer2-body-link">Tư vấn bảo hành </a> 
                            <a href="" class="footer2-body-link">Tư vấn thanh toán </a>
                            <a href="" class="footer2-body-link">Góp ý , khiếu nại</a>
                        </div>
                    </div>
                    <div class="footer2-item col l-3 m-6 c-6">
                        <h1 class="footer2-title2">Chính sách chung</h1>
                        <div class="footer2-body">
                            <a href="" class="footer2-body-link">Chính sách quy định cung</a>
                            <a href="" class="footer2-body-link">Chính sách vận chuyển</a>
                            <a href="" class="footer2-body-link">Chính sách bảo hành</a>
                            <a href="" class="footer2-body-link">Chính sách cho doanh nghiệp</a>
                            <a href="" class="footer2-body-link">Bảo mật thông tin khách hàng</a>
                            <a href="" class="footer2-body-link">Chính sách đổi trả</a>
                            <a href="" class="footer2-body-link">Chính sách thuế vat</a>
                        </div>
                    </div>
                    <div class="footer2-item col l-3 m-6 c-6">
                        <h1 class="footer2-title2">Thông tin khuyến mại</h1>
                        <div class="footer2-body">
                            <a href="" class="footer2-body-link">Sự kiện khuyến mại 4/4</a>
                            <a href="" class="footer2-body-link">Sự kiện khuyến mại 8/3</a>
                            <a href="" class="footer2-body-link">Sự kiện khuyến mại tết nguyên đán</a>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="end-body">
            <span class="end-body-title">© 2022 Công ty Cổ phần đầu tư công nghệ PKA</span>
            <span class="end-body-adress">Địa chỉ: Phenikaa University, Phố Nguyễn Trác, Yên Nghĩa, Hà Đông, Hà Nội</span>
            <span class="end-body-contact">Email: 20010849@st.phenikaa-uni.edu.vn . Điện thoại: 0334 937 503</span>

        </div>                    
    </body>
    <script src="JS/giohangfull.js"></script>
    <script src="JS/index.js"></script>
  
</html> 
