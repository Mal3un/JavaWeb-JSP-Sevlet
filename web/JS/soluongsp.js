/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

document.querySelector('.sanpham-buy-quality-total').value = 1;
var btnC = document.querySelector('.sanpham-buy-quality-plus');
var btnT = document.querySelector('.sanpham-buy-quality-minus');
btnC.onclick = function () {
    var sl = parseInt(document.querySelector('.sanpham-buy-quality-total').value);
    if(sl>0){
        var a = (sl) + 1;
        document.querySelector('.sanpham-buy-quality-total').value = a;
    }
}

btnT.onclick = function () {
    var sl = parseInt(document.querySelector('.sanpham-buy-quality-total').value);
    if(sl>1){
        var b = (sl) - 1;
        document.querySelector('.sanpham-buy-quality-total').value = b;
    }
}
const reg = new RegExp('^[0-9]+$');
document.querySelector('.sanpham-buy-quality-total').onchange = function(){
    if (reg.test(document.querySelector('.sanpham-buy-quality-total').value)==false){
      window.location.href = '';
    }
}
var btn_submit = document.getElementById('sanpham-buy-button-btn btn btn-primary2');
btn_submit.onclick = function (e) {
    e.preventDefault();
    window.location.href = (btn_submit.href + "&sl="+document.querySelector('.sanpham-buy-quality-total').value);
    console.log(document.querySelector('.sanpham-buy-quality-total').value);
    document.querySelector('.sanpham-buy-quality-total').value = 1;
}