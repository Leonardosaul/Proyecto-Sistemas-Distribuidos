/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Connection.ConexionBD;
import Entity.DetallePedido;
import Entity.Pedido;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author javie
 */
public class ControllerPedido extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ControllerPedido</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ControllerPedido at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        //processRequest(request, response);
        
        String Op =request.getParameter("Op");
        ArrayList<Pedido> Lista= new ArrayList<Pedido>();
        ArrayList<DetallePedido> ListaDet= new ArrayList<DetallePedido>();
        ConexionBD conBD = new ConexionBD();
        Connection conn = conBD.Connected();
        PreparedStatement ps;
        ResultSet rs;
        switch(Op){
            case "Listar":
                try{
                    String sql="SELECT Id_Pedido, A.Id_Cliente, B.Apellidos, B.Nombres, A.Fecha,"+
                               "A.SubTotal, A.TotalVenta FROM t_pedido A inner join t_cliente B on A.Id_Cliente=B.Id_Cliente";
                    //String sql="SELECT * FROM t_pedido";
                    ps= conn.prepareStatement(sql);
                    rs= ps.executeQuery();
                    while(rs.next()){
                        Pedido pedido=new Pedido();
                        pedido.setId_Pedido(rs.getString(1));
                        pedido.setId_Cliente(rs.getString(2));
                        pedido.setApellidos(rs.getString(3));
                        pedido.setNombres(rs.getString(4));
                        pedido.setFecha(rs.getDate(5));
                        pedido.setSubTotal(rs.getDouble(6));
                        pedido.setTotalVenta(rs.getDouble(7));
                        Lista.add(pedido);
                    }
                    request.setAttribute("Lista", Lista);
                    request.getRequestDispatcher("listarPedido.jsp").forward(request, response);
                }catch(SQLException ex){
                    System.out.println("Error de SQL..."+ex.getMessage());
                }finally{
                    conBD.Discconet();
                }
                break;
            case "Consultar":
                 try{
                    String Id=request.getParameter("Id");
                    String sql="SELECT Id_Pedido,A.Id_Prod,A.Cantidad, A.Precio, TotalDeta "+
                            "FROM t_detalle_pedido A inner join t_producto B on A.Id_Prod=B.Id_Prod "+
                            "WHERE Id_Pedido=?";
                    ps= conn.prepareStatement(sql);
                    ps.setString(1, Id);
                    rs= ps.executeQuery();
                    DetallePedido DetaPed=new DetallePedido();
                    while(rs.next()){
                        DetaPed.setId_Pedido(rs.getString(1));
                        DetaPed.setId_Prod(rs.getString(2));
                        DetaPed.setCantidad(rs.getDouble(3));
                        DetaPed.setPrecio(rs.getDouble(4));
                        DetaPed.setTotalDeta(rs.getDouble(5));
                        ListaDet.add(DetaPed);
                    }
                    request.setAttribute("Lista", ListaDet);
                    request.getRequestDispatcher("consultarPedido.jsp").forward(request, response);
                }catch(SQLException ex){
                    System.out.println("Error de SQL..."+ex.getMessage());
                } finally{
                    conBD.Discconet();
                }                
                break;                   

            case "Eliminar":
                
            case "Nuevo":
                request.getRequestDispatcher("nuevoPedido.jsp").forward(request, response);
                break;
        }
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
        //processRequest(request, response);
        
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
