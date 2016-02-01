/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.CircleService;
import model.RectangleService;
import model.TriangleService;

/**
 *
 * @author andre_000
 */
@WebServlet(name = "RecTriCircController", urlPatterns = {"/MultiShape"})
public class RecTriCircController extends HttpServlet {
    private final String RESPONSE_PAGE = "/lab3.jsp";
    private final String RECTANGLE = "RECTANGLE";
    private final String TRIANGLE = "TRIANGLE";
    private final String CIRCLE = "CIRCLE";
    private final String ERROR_MSG = "Error, Please try again.";
    private String responseMsg;
    
    
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
            
                     
        if( request.getParameter("shapeID").equals(RECTANGLE) ){             
                     
            String height = request.getParameter("height");
            String width = request.getParameter("width");
            
            RectangleService rectangleServ = new RectangleService(height, width);
            responseMsg = rectangleServ.getCalculatedArea();
            
           
        } else if (request.getParameter("shapeID").equals(TRIANGLE)){
            
            String height = request.getParameter("height");
            String base = request.getParameter("base");
            
            TriangleService triangleServ = new TriangleService(height, base);
            responseMsg = triangleServ.getCalculatedArea();
            
            
        } else if (request.getParameter("shapeID").equals(CIRCLE)){
            
            String radius = request.getParameter("radius");
            
            CircleService circleServ = new CircleService(radius);
            responseMsg = circleServ.getCalculatedArea();
        } 
            request.setAttribute("myMsg", responseMsg);
            
            RequestDispatcher view =
                    request.getRequestDispatcher(RESPONSE_PAGE);
            view.forward(request, response);
            
            
            
        } catch(Exception e) {
            request.setAttribute("errorMsg", e.getMessage());
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
