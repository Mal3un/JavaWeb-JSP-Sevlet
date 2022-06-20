/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package loaddata;

import connect.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import modal.Account;
import modal.bill;
import modal.product;
import java.sql.Date;
import java.sql.SQLException;
import modal.BillDetail;

/**
 *
 * @author admin
 */
public class DAO {
    Connection conn = null;   //ket noii toi sql sv
    PreparedStatement ps = null; //gui cau lenh querry tu netbeen toi sql sever
    ResultSet rs = null;
    PreparedStatement ps2 = null;
    ResultSet rs2 = null;
    
    public List<product> getAllproductAdmin(){
        List<product> List = new ArrayList<>();
        String sql ="select * from sanpham "
                + "ORDER BY ma desc";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId")));
            }
            conn.close();
        }catch(Exception e){
        }
        
        return List;       
    }
    
    
    public List<product> getAllproductIndex1(){
        List<product> List = new ArrayList<>();
        String sql ="select * from sanpham where cateroryId = 1 limit 5";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<product> getAllproductIndex2(){
        List<product> List = new ArrayList<>();
        String sql ="select * from sanpham where cateroryId = 2 limit 5";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    
    public List<product> getAllproduct1(){
        List<product> List = new ArrayList<>();
        String sql ="select * from sanpham where cateroryId = 1 ";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<product> getAllproduct2(){
        List<product> List = new ArrayList<>();
        String sql ="select * from sanpham where cateroryId = 2 ";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    
    public List<product> getSearching(String search){
        List<product> List = new ArrayList<>();
        String sql ="select * from sanpham where ma like ? or heading like ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+search+"%");
            ps.setString(2,"%"+search+"%");
            
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<Account> getSearchingAcount(String search){
        List<Account> List = new ArrayList<>();
        String sql ="SELECT * FROM `tkuser` WHERE ID > 1 AND (ID like ? or Name like ? or tk like ? or tk like ? or phone like ? or address like ?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+search+"%");
            ps.setString(2,"%"+search+"%");
            ps.setString(3,"%"+search+"%");
            ps.setString(4,"%"+search+"%");
            ps.setString(5,"%"+search+"%");
            ps.setString(6,"%"+search+"%");

            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new Account(rs.getInt("ID"),
                        rs.getString("name"),
                        rs.getString("tk"),
                        rs.getString("mk"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<bill> getSearchingBill0(String search){
        List<bill> List = new ArrayList<>();
        String sql ="SELECT * FROM `hoadon` WHERE status='Chờ duyệt' and (ID like ? or IdKh like ? or NgayTao like ?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+search+"%");
            ps.setString(2,"%"+search+"%");
            ps.setString(3,"%"+search+"%");
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new bill(rs.getInt("ID"),
                        rs.getInt("IdKh"),
                        rs.getInt("TongTien"),
                        rs.getString("Ngaytao"),
                        rs.getString("status")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<bill> getSearchingBill1(String search){
        List<bill> List = new ArrayList<>();
        String sql ="SELECT * FROM `hoadon` WHERE status='Đã duyệt' and ( ID like ? or IdKh like ? or NgayTao like ?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,"%"+search+"%");
            ps.setString(2,"%"+search+"%");
            ps.setString(3,"%"+search+"%");
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new bill(rs.getInt("ID"),
                        rs.getInt("IdKh"),
                        rs.getInt("TongTien"),
                        rs.getString("Ngaytao"),
                        rs.getString("status")));
            }
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public Account getAccount(String uid){
        String sql ="select * from tkuser where id = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,uid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt("ID"),
                        rs.getString("name"),
                        rs.getString("tk"),
                        rs.getString("mk"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"));
            }
            conn.close();
        }catch(Exception e){
        }
        return null;
    }
    public product getProductDetail(String pid){       
        String sql ="select * from sanpham where ma = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,pid);
            rs = ps.executeQuery();
            while(rs.next()){
                return new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId"));
            }
            conn.close();
        }catch(Exception e){
        }
        return null;
    }
    public Account login(String user,String pass){
        String sql = "Select * from tkuser where tk =? and mk = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,user);
            ps.setString(2,pass);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt("ID"),
                        rs.getString("name"),
                        rs.getString("tk"),
                        rs.getString("mk"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"));
            }
            conn.close();
        }catch(Exception e){
        }       
        return null;
    }
    public Account checked(String user,String email){
        String sql = "Select * from tkuser where tk =? || email = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,user);
            ps.setString(2,email);
            rs = ps.executeQuery();
            while(rs.next()){
                return new Account(rs.getInt("ID"),
                        rs.getString("name"),
                        rs.getString("tk"),
                        rs.getString("mk"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address"));
            }
            conn.close();
        }catch(Exception e){
        }       
        return null;
    }
    public product checkedproduct(String pname){
        String sql = "Select * from sanpham where heading like ? ";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,pname);       
            rs = ps.executeQuery();
            while(rs.next()){
                return new product(rs.getInt("ma"),
                        rs.getString("img"),
                        rs.getString("heading"),
                        rs.getInt("giamoi"),
                        rs.getInt("giacu"),
                        rs.getInt("view"),
                        rs.getInt("sale"),
                        rs.getInt("cateroryId"));
            }
            conn.close();
        }catch(Exception e){
        }       
        return null;
    }
    public int insertproduct(String img,String heading,String giamoi,String giacu,String view,String sale,String type) {
        String sql = "INSERT INTO `sanpham`(`img`, `heading`, `giamoi`, `giacu`, `view`, `sale`,`cateroryId`) VALUES (?,?,?,?,?,?,?)";
        try{
            
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,img);
            ps.setString(2,heading);
            ps.setString(3,giamoi);
            ps.setString(4,giacu);
            ps.setString(5,view);
            ps.setString(6,sale);
            ps.setString(7,type);
            ps.executeUpdate();
            conn.close();
            return 1;
        }catch(Exception e){
            return -1;
        }
    }
    public void register(String user,String pass,String email) {
        String sql = "INSERT INTO `tkuser`(`Name`, `tk`, `mk`, `email`,`phone`,`address`) VALUES (?,?,?,?,0,' ')";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1,user);
            ps.setString(2,user);
            ps.setString(3,pass);
            ps.setString(4,email);
            ps.executeUpdate();
            conn.close();
        }catch(Exception e){
            
        }
    }
    public void registerByAdmin(String name,String user,String pass,String email,String phone , String address) {
        String sql = "INSERT INTO `tkuser`(`Name`, `tk`, `mk`, `email`,`phone`,`address`) VALUES (?,?,?,?,?,?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);

            ps.setString(1,name);
            ps.setString(2,user);
            ps.setString(3,pass);
            ps.setString(4,email);
            ps.setString(5,phone);
            ps.setString(6,address);
            ps.executeUpdate();
            conn.close();
        }catch(Exception e){
            
        }
    }
    
    public int deleteproduct(String id){
        String sql = "DELETE FROM sanpham WHERE ma = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,id);         
            ps.executeUpdate(); 
            conn.close();
            return 1;
        }catch(Exception e){
            return -1;
        }          
    }
    
    public void deleteAccount(String id){
        String sql = "DELETE FROM `tkuser` WHERE ID = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,id);         
            ps.executeUpdate(); 
            conn.close();
        }catch(Exception e){
        }          
    }
    public void deleteBill(int bid){
        String sql = "DELETE FROM `hoadon` WHERE ID = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,bid);         
            ps.executeUpdate(); 
            conn.close();
        }catch(Exception e){
        }          
    }    
    
    
    public List<product> cartlist(int id){
        List<product> List = new ArrayList<>();
        String sql = "Select * from giohang where iduser =? ";     
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,Integer.toString(id));                                                                                                                           
            rs = ps.executeQuery();           
            while(rs.next()){
                int a = rs.getInt("idproduct");
                DAO dao = new DAO();
                List.add(dao.getProductDetail(Integer.toString(a)));
            }     
            conn.close();
        }catch(Exception e){
        }   
        return List;
    }
    public String getQualityPcart(String iduser , String idproduct){
         String sql = "SELECT * FROM `giohang` WHERE iduser = ? and idproduct = ?";
         try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,iduser);
            ps.setString(2,idproduct);
            rs = ps.executeQuery(); 
            while(rs.next()){
                return rs.getString("sl");
            }
            conn.close();            
        }catch(Exception e){
        }  
        return "1";
    };
    public int CheckCartUser(String iduser , String idproduct){
        String sql = "SELECT * FROM `giohang` WHERE iduser = ? and idproduct = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,iduser);
            ps.setString(2,idproduct);
            rs = ps.executeQuery(); 
            while(rs.next()){
                return rs.getInt("sl");
            }
            conn.close();            
        }catch(Exception e){
        }  
        return -1;
    }
    public void InsertPByUser(String iduser , String idproduct){
        String sql = "INSERT INTO `giohang`(`iduser`, `idproduct`, `sl`) VALUES (?,?,1)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,iduser);
            ps.setString(2,idproduct);
            ps.executeUpdate();
            conn.close();            
        }catch(Exception e){
        }  
    }
    public void UpdateQltByUser(String uid , String pid){
        String sql = "UPDATE `giohang` SET `sl`=sl+1 WHERE (iduser=? and idproduct=?);";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,uid);
            ps.setString(2,pid);
            ps.executeUpdate();          
            conn.close(); 
        }catch(Exception e){
        }      
    }
    public void deletecartbyUser(String iduser , String idproduct){        
        String sql = "DELETE FROM giohang WHERE iduser = ? and idproduct = ? limit 1";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,iduser); 
            ps.setString(2,idproduct);         
            ps.executeUpdate();
            conn.close();            
        }catch(Exception e){
        }   
        
    }
    public void updateproduct(String img,String heading,String giamoi,String giacu,String view,String sale,String type,String id){
        String sql = "UPDATE `sanpham` SET `img`=?,`heading`=?,`giamoi`=?,`giacu`=?,`view`=?,`sale`=?, `cateroryId`=? WHERE ma = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,img); 
            ps.setString(2,heading); 
            ps.setString(3,giamoi); 
            ps.setString(4,giacu); 
            ps.setString(5,view); 
            ps.setString(6,sale); 
            ps.setString(7,type);          
            ps.setString(8,id);         
            ps.executeUpdate();
            conn.close();

        }catch(Exception e){

        }   
    }
    public void updateAccount(int uid, String name, String username,String password , String email,String phone, String address){
        String sql = "UPDATE `tkuser` SET `Name`=?,`tk`=?,`mk`=?,`email`=?,`phone`=?,`address`=? WHERE ID = ?";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,name); 
            ps.setString(2,username); 
            ps.setString(3,password); 
            ps.setString(4,email);
            ps.setString(5,phone); 
            ps.setString(6,address); 
            ps.setInt(7,uid); 
            ps.executeUpdate();
            conn.close();              
        }catch(Exception e){
        }   
    }
    public List<Account> getQltk(){
    List<Account> List = new ArrayList<>();
    String sql ="SELECT * FROM `tkuser` WHERE ID > 1";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new Account(rs.getInt("ID"),
                        rs.getString("name"),
                        rs.getString("tk"),
                        rs.getString("mk"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("address")));
            }
            conn.close();  
        }catch(Exception e){
        }
        return List;
    }
    public int getHoadon(int uid , int totalbill){
        String sql ="SELECT * FROM `hoadon` where IdKh = ? and TongTien = ? ORDER BY id desc";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,Integer.toString(uid)); 
            ps.setString(2,Integer.toString(totalbill)); 
            rs = ps.executeQuery();
            while(rs.next()){
                return rs.getInt("ID");
            }
            conn.close();  
        }catch(Exception e){
        }   
        return -1;
    }
    public void dondathang(int uid , int totalbill){
        String sql ="INSERT INTO `hoadon`(`IdKh`, `TongTien`,`status`) VALUES (?,?,'Chờ duyệt') ";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,Integer.toString(uid)); 
            ps.setString(2,Integer.toString(totalbill));    
            ps.executeUpdate();
            conn.close();  
        }catch(Exception e){
        }
                
    }
    public void insertProductInHoadon(int idhd,int idsp,String img,String tensp,int qlt,int giasp,int type,int uid){
        String sql ="INSERT INTO `chitiethoadon`(`ID`, `IdProduct`,`img`, `NameProduct`, `Quanlity`, `PriceProduct`, `Type`,IdKh) VALUES (?,?,?,?,?,?,?,?)";
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setString(1,Integer.toString(idhd));
            ps.setString(2,Integer.toString(idsp));
            ps.setString(3,img);
            ps.setString(4,tensp);
            ps.setString(5,Integer.toString(qlt));
            ps.setString(6,Integer.toString(giasp));
            ps.setString(7,Integer.toString(type));
            ps.setString(8,Integer.toString(uid));
            ps.executeUpdate();
            conn.close();
        }catch(Exception e){
        }
        
    }
    public List<bill> getAllbillStatus0(){
        List<bill> List = new ArrayList<>();
        String sql ="select * from hoadon Where status = 'Chờ duyệt' ";        
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new bill(rs.getInt("ID"),
                        rs.getInt("IdKh"),
                        rs.getInt("TongTien"),
                        rs.getString("NgayTao"),
                        rs.getString("status")));
            }   
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<bill> getAllbillStatus1(){
        List<bill> List = new ArrayList<>();
        String sql ="select * from hoadon Where status = 'Đã duyệt' ";        
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new bill(rs.getInt("ID"),
                        rs.getInt("IdKh"),
                        rs.getInt("TongTien"),
                        rs.getString("NgayTao"),
                        rs.getString("status")));
            }  
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public void ConfirmOrder(int bid){
        String sql = "UPDATE `hoadon` SET `status`='Đã duyệt' WHERE ID = ?";
         try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,bid);  
            ps.executeUpdate();   
            conn.close();
        }catch(Exception e){
        }   
    }
    public List<bill> getAllbill(int uid){
        List<bill> List = new ArrayList<>();
        String sql ="select * from hoadon where IdKh = ?";        
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,uid);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new bill(rs.getInt("ID"),
                        rs.getInt("IdKh"),
                        rs.getInt("TongTien"),
                        rs.getString("NgayTao"),
                        rs.getString("status")));
            }   
            conn.close();
        }catch(Exception e){
        }
        return List;
    }
    public List<BillDetail> getChitietdathang(int bid){
        List<BillDetail> List = new ArrayList<>();
        String sql ="SELECT * FROM `chitiethoadon` WHERE ID = ?";        
        try{
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1,bid);
            rs = ps.executeQuery();
            while(rs.next()){
                List.add(new BillDetail(rs.getInt("ID"),
                        rs.getInt("Idproduct"),
                        rs.getString("img"),
                        rs.getString("NameProduct"),
                        rs.getInt("Quanlity"),
                        rs.getInt("PriceProduct"),
                        rs.getInt("Type"),
                        rs.getInt("IdKh")));                       
            }   
            conn.close();
        }catch(SQLException e){
        }
        return List;
    }
   
}
