/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/ClientSide/javascript.js to edit this template
 */
var a= "";
var a2= "";
if(document.querySelector('#thongbao')){
    var thongbao = document.querySelector('#thongbao');
    if(window.location.search !==""){
        a = "sai tài khoản hoặc mật khẩu";
        thongbao.textContent = a;
    }       
}
if(document.querySelector('#thongbao2')){
    var thongbao2 = document.querySelector('#thongbao2');
    if(window.location.search !==""){
        a2 = "tài khoản hoặc email đã tồn tại !";
        thongbao2.textContent = a2;
    }
}

