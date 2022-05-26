quanlity = document.querySelector('.header__cart-list--quantity');
quanlityitem = document.querySelectorAll('.product-item');
soluong = document.querySelectorAll('.product-item-qnt');
var dem=0;
for(var i = 0;i<soluong.length;i++){
    dem+= parseInt(soluong[i].textContent);
}
quanlity.innerText = dem;
clearcart = document.querySelectorAll('.product-item-remove');
quanlitynoitem = document.querySelector('.header__no-cart');



