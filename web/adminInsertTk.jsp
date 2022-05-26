<%-- 
    Document   : adminInsertTk
    Created on : May 11, 2022, 10:02:15 AM
    Author     : mduc0
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
    <title>InsertProduct</title>
    
    <link rel="stylesheet" href="assets/css/grid.css">
    <link rel="stylesheet" href="assets/css/insert.css">

</head>
<body>
    <h1>
        Tạo tài khoản
        <a href="adminqltk.jsp" class="">
            <img width=40px; style="float: left; "; src="https://cdn.picpng.com/application/app-application-arrow-back-52945.png" alt="">
        </a>
    </h1>
    <div class="grid wide formmm">
        <?php if(isset($_GET['error'])){?>
        <span style="color:red";>
            <?php echo $_GET['error']; ?> 
        </span>
        <?php } ?>
        <form action="regesterbyAdmin" method="POST">
            <span>Họ Và Tên :</span> 
            <input type="text" name="name"><br>
            <span>Username:</span> 
            <input type="text" name="Username"><br>
            <span>Password :</span> 
            <input type="password" name="Pass"><br>
            <span>Email :</span> 
            <input type="text" name="email"><br>
            <span>Phone :</span> 
            <input type="text" name="phone"><br>
            <span>Address :</span> 
            <input type="text" name="address"><br>
            <button>Tạo tài khoản</button>
        </form>
    </div>

</body>
</html>
