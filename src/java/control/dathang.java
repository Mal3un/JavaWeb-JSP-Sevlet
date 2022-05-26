/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import javaapplication3.product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import java.util.List;
import javaapplication3.Account;
import javaapplication3.bill;
import loaddata.DAO;

/**
 *
 * @author mduc0
 */
@WebServlet(name = "dathang", urlPatterns = {"/dathang"})
public class dathang extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("utf-8");
        String uid = request.getParameter("uid");
        int uids = Integer.parseInt(uid);                                                                                       
        DAO dao = new DAO();
        List<product> List = dao.cartlist(uids);
        if(List != null){
            int totalbill=0;
            for(product a : List){
                int soluong = Integer.parseInt(dao.getQualityPcart(uid,Integer.toString(a.getId())));
                int price = a.getGiamoi() * soluong;
                totalbill += price;
            }
            dao.dondathang(uids, totalbill);
            int idhd = dao.getHoadon(uids, totalbill);
            for(product a : List){
                dao.insertProductInHoadon(idhd,a.getId(),a.getImg(),a.getHeading(),Integer.parseInt(dao.getQualityPcart(uid,Integer.toString(a.getId()))),a.getGiamoi(),a.getCategoryid(),uids);          
                dao.deletecartbyUser(uid,Integer.toString(a.getId()));
            }
            request.setAttribute("status", "Đơn đặt hàng của bạn đã được gửi , xin chờ quản trị viên duyệt !");
            request.getRequestDispatcher("giohang.jsp").forward(request, response);
        }else{
            request.setAttribute("status", "Dat hang that bai!");
            request.getRequestDispatcher("giohang.jsp").forward(request, response);
        }
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
