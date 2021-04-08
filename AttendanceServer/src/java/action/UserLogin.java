/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.JSONObject;
import pack.DBConnection;

/**
 *
 * @author PhoenixZone
 */
public class UserLogin extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        try {
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String usertype = request.getParameter("usertype");
            JSONObject json = new JSONObject();
            String sql = "";
            DBConnection db = new DBConnection();
            if (usertype.equalsIgnoreCase("student")) {
                sql = "SELECT * FROM students WHERE email='" + email + "' AND password='" + password + "'";
            } else {
                sql = "SELECT * FROM teachers WHERE email='" + email + "' AND password='" + password + "'";
            }
            ResultSet rs = db.select(sql);
//            if (rs.next()) {
//                json.put("success", "true");
//                json.put("name", rs.getString("name"));
//                json.put("mobile", rs.getString("mobile"));
//                json.put("address", rs.getString("address"));
//                json.put("message", "Login Success");
//            } else {
//                json.put("message", "Invalid credentials");
//            }

               if (usertype.equalsIgnoreCase("student")) {
                               if (rs.next()) {
                        json.put("success", "true");
                         json.put("ID", rs.getString("s_id"));
                        json.put("name", rs.getString("s_name"));
                        json.put("roll no", rs.getString("s_rollno"));
                        json.put("division", rs.getString("division"));
                        json.put("year", rs.getString("s_year"));
                        json.put("mobile", rs.getString("phone_number"));
                        json.put("email", rs.getString("email"));
                         json.put("password", rs.getString("password"));
                        json.put("message", "Login Success");
                    } else {
                        json.put("message", "Invalid credentials");
                    }
                   
               }else if(usertype.equalsIgnoreCase("teachers")){
                   if (rs.next()) {
                        json.put("success", "true");
                        json.put("name", rs.getString("name"));
                        json.put("mobile", rs.getString("mobile"));
                        json.put("address", rs.getString("address"));
                        json.put("message", "Login Success");
                    } else {
                        json.put("message", "Invalid credentials");
                    }
               
               
               
               
               }
            response.setContentType("application/json");
            response.getWriter().write(json.toString());
        } catch (Exception e) {

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
