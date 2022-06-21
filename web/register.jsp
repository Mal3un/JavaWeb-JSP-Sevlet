<%-- 
    Document   : register
    Created on : May 8, 2022, 1:29:04 PM
    Author     : admin
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
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
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/responsive.css">

    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500;700;900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css"
        integrity="sha512-9usAa10IRO0HhonpyAIVpjrylPvoDwiPUiKdWk5t3PyolY1cOd4DSE0Ga+ri4AuTroPR5aQvXU9xC6qOPnzFeg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
    <div class="main">
        <div class="header">
            <div class="grid wide">
                <div class="header__navbar">
                    <div class="header__menu ">
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
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=laptop'">
                                                            LapTop Văn Phòng
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=laptop'">
                                                            LapTop Gaming
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=laptop'">
                                                            Laptop Đồ Họa
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=laptop'">
                                                            LapTop Mỏng Nhẹ
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=laptop'">
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
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=chuột'">
                                                            Chuột Gaming
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=tai nghe'">
                                                            Headphone 
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=bàn phím'">
                                                            Bàn phím Gaming
                                                        </li>
                                                        <li class="menu__product-type-item" onclick="window.location.href='./search?search=tay cầm'">
                                                            Tay cầm chơi game
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
                        <div class="header__search-mobile hide-on-mobile hide-on-pc">
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
                        <!-- <div class="header__login hide-on-mobile ">
                            <div class="header__login-list">
                                <span class="header__login-list--icon">
                                    <i class="fa-solid fa-user"></i>
                                </span>
                                <span class="header__login-list--text">
                                    Tài Khoản
                                </span>
                                <div class="header__login-form">
                                    <div class="header__login-form-heading">
                                        <span class="form-heading-title">ĐĂNG NHẬP TÀI KHOẢN</span>
                                        <span class="form-heading-description">Nhập email và mật khẩu của bạn</span>
                                    </div>
                                    <div class="header__login-form-body">
                                        <input type="text" class="header__login-form-email" placeholder="Email">
                                        <input type="password" class="header__login-form-password"
                                            placeholder="Mật Khẩu">
                                        <div class="header__login-form-law">
                                            <span class="header__login-form-law-text">
                                                Google and
                                                <a href="" class="header__login-form-law-link">Privacy Policy</a>
                                                and
                                                <a href="" class="header__login-form-law-link">Terms of Service</a>
                                                apply.
                                            </span>
                                        </div>
                                        <div class="header__login-form-btn btn btn--primary">Đăng Nhập</div>
                                        <div class="header__login-form-more">
                                            <span class="header__login-form-register">
                                                Khách hàng mới ?
                                                <a href="" class="header__login-form-register-link">Đăng ký ngay</a>
                                            </span>
                                            <span class="header__login-form-forgot-password">
                                                Quên mật khẩu ?
                                                <a href="" class="header__login-form-forgot-password-link">Khôi phục mật
                                                    khẩu</a>
                                            </span>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div> -->
                        <div class="header__cart">
                            <div class="header__cart-list">
                                <span class="header__cart-list--icon">
                                    <i class="fa-solid fa-cart-shopping"></i>
                                </span>
                                <span class="header__cart-list--text">
                                    Giỏ Hàng
                                </span>
                                <span class="header__cart-list--quantity"></span>  
                                <c:if test="${sessionScope.acc == null}" >
                                    <div class="header__cart-list--product ">

                                        <h4 class="header__cart-list-heading">Sản Phẩm Đã Thêm</h4>
                                       
                                            <img src="https://taphoa.cz/static/media/cart-empty-img.8b677cb3.png" alt="" class="header__no-cart-img">
                                            <h1 style="text-align: center" class="header__no-cart-title">Không có sản phẩm</h1>
                                        
                                        
                                        <a href="login.jsp" class="header__cart-list--view-all btn btn--primary">Đăng nhập</a>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.acc != null}" >
                                    <div class="header__cart-list--product ">                                   
                                        <h4 class="header__cart-list-heading">Sản Phẩm Đã Thêm</h4>
                                        <div class="header__no-cart">
                                            <img src="https://taphoa.cz/static/media/cart-empty-img.8b677cb3.png" alt="" class="header__no-cart-img">
                                            <h1 class="header__no-cart-title">Không có sản phẩm</h1>
                                        </div>
                                        <ul class="header__cart-list-product-item"> 
                                            <jsp:useBean id="cart" class="loaddata.DAO" scope="request"></jsp:useBean>
                                            <c:forEach items="${cart.cartlist(acc.id)}" var ="j">                                   
                                                <li class="product-item">
                                                    <img src="${j.img}"
                                                        alt="" class="product-item-img">
                                                    <div class="product-item-info">
                                                        <div class="product-item-head">
                                                            <h5 class="product-item-name">
                                                                ${j.heading}
                                                            </h5>
                                                            <div class="product-item-price-wrap">
                                                                <span class="product-item-price">
                                                                    <c:set var = "balance" value = "${j.giamoi}" />
                                                                    <fmt:formatNumber  type = "number" pattern = "###,###" value = "${balance}" />
                                                                    vnđ
                                                                </span>
                                                                <span class="product-item-multiply">x</span>
                                                                <span class="product-item-qnt">
                                                                    <jsp:useBean id="qlt" class="loaddata.DAO" scope="request"></jsp:useBean>
                                                                    <c:set var = "balance" value = "${qlt.getQualityPcart(acc.id,j.id)}" /> 
                                                                    ${balance}
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="product-item-body">
                                                            <span class="product-item-description">
                                                                Phân Loại Hàng : New 100%
                                                            </span>
                                                            <a style="text-decoration: none;" href="deletecartByuser?&url=index.jsp&uid=${acc.id}&pid=${j.id}" class="product-item-remove">Xóa</a>
                                                        </div>
                                                    </div>
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <a href="giohang.jsp" class="header__cart-list--view-all btn btn--primary">Xem giỏ hàng</a>
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
            <div class="container2">
                <form id="form2" method="post" action="register">
                    <div class="login">                       
                        <h1 class="login-title">Register Form</h1>
                        <div class="login-body ">
                            <input id="username" name="tk" type="text" placeholder="username" class="login-id">
                            <small></small>
                            <span></span>
                        </div>
                        <div class="login-body ">
                            <input id="email" name="email" type="email" placeholder="Email" class="login-id">
                            <small></small>
                            <span></span>
                        </div>
                        <div class="login-body ">
                            <input id="password" name="mk" type="password" placeholder="password" class="login-id">
                            <small></small>
                            <span></span>
                        </div>
                        <div class="login-body ">
                            <input id="re-password" type="password" placeholder="confỉrm password" class="login-id">
                            <small></small>
                            <span></span>
                        </div>                    
                        <span style="color:red;padding:24px 0px 0px ;font-size:14px;text-align:center;display: block;" id="thongbao2">
                            
                        </span> 
                        <div  class="login-button-link" >
                            <button type="submit" class="login-button">                        
                                Register
                            </button>                   
                        </div>
                                         

                        <div class="login-link">
                            You are member? <a href="login.jsp">Sign in</a>
                        </div>
                    </div>
                </form>
                
            </div>

        </div>

    </div>
</body>
<script src="JS/login.js"></script>
<script src="JS/index.js"></script>
<script src="JS/thongbao.js"></script>


</html>
