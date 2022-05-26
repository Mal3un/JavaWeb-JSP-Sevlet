/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Other/javascript.js to edit this template
 */

var c = document.querySelector('#inforkh');
if(window.location.search !== ""){
    var a =  window.location.search.substr(6);
    c.value = a;
    window.location.href = 'inforkh?name=' + c.value ;
}



     
