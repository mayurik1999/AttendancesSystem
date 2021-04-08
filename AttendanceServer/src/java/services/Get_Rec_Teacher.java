/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import pack.DBConnection;

/**
 *
 * @author Mayuri
 */
public class Get_Rec_Teacher extends HttpServlet {

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
        try  {
            
            
            String year = request.getParameter("year");
            String division = request.getParameter("division");
            String subject = request.getParameter("subject");
            JSONObject json = new JSONObject();
            String sql = "";
            DBConnection db = new DBConnection();
            sql = "SELECT * FROM Tattendance WHERE year='" + year + "' AND division='" + division + " 'AND subject='"+subject+"'";
            ResultSet rs = db.select(sql);
           
            if (rs.next()) {
                        json.put("success", "true");
                         json.put("ID", rs.getString("teacherid"));
                        json.put("name", rs.getString("t_name"));
                        json.put("roll no", rs.getString("t_ocp"));
                        json.put("mobile", rs.getString("phone_number"));
                        json.put("email", rs.getString("email"));
                         json.put("password", rs.getString("password"));
                        json.put("message", "Login Success");
                    } 
                  
            response.setContentType("application/json");
            response.getWriter().write(json.toString());
            
        } catch (Exception e) {
            Logger.getLogger(Get_Rec_Teacher.class.getName()).log(Level.SEVERE, null, e);
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
