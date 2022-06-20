/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import modal.product;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import loaddata.DAO;

/**
 *
 * @author admin
 */
@WebServlet(name = "adminInsert", urlPatterns = {"/adminInsert"})
public class adminInsert extends HttpServlet {

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
        try{
            String img = request.getParameter("anh");
            String tieude = request.getParameter("heading");               
            String giamoi = request.getParameter("giamoi");
            String giacu = request.getParameter("giacu");
            String view = request.getParameter("view");
            String sale = request.getParameter("sale");
            String type = request.getParameter("type");
        
            if((Integer.parseInt(giamoi)<=  0) || (Integer.parseInt(giacu)<=  0) || (Integer.parseInt(view)<=  0)||(Integer.parseInt(sale)<=  0)){
                request.setAttribute("error", "không được nhập số âm");
                request.getRequestDispatcher("adminInsertProduct.jsp").forward(request, response); 
            }
            DAO dao = new DAO();
            product p = dao.checkedproduct(tieude);
            int a = dao.insertproduct(img,tieude,giamoi,giacu,view,sale,type);
            if (a == 1){                 
                request.setAttribute("messcreate", "Thêm sản phẩm thành công !");
                request.getRequestDispatcher("adminqlsp.jsp").forward(request, response); 
            }else{            
                request.setAttribute("error", "Sản phẩm đã tồn tại");
                request.getRequestDispatcher("adminInsertProduct.jsp").forward(request, response); 
            }
        }catch(Exception e){
            request.setAttribute("error", "Nhập sai định dạng");
            request.getRequestDispatcher("adminInsertProduct.jsp").forward(request, response);
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
