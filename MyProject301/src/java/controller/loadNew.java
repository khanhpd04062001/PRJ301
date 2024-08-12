/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import model.Images;
import model.Post;

/**
 *
 * @author hp
 */
@WebServlet(name = "loadNew", urlPatterns = {"/loadNew"})
public class loadNew extends HttpServlet {

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
        DAO d = new DAO();
        //ArrayList<Post> listNew = d.loadPost();
        ArrayList<Post> listCN = d.loadPostCN();
        ArrayList<Post> listCN1 = d.loadPostCN1();
        ArrayList<Post> listBĐVN = d.loadPostBĐVN();
        ArrayList<Post> listPL = d.loadPostPreLeg();
        ArrayList<Post> listLL = d.loadPostLaLiga();
        ArrayList<Post> listSA = d.loadPostSerieA();
        ArrayList<Post> listL1 = d.loadPostLig1();
        ArrayList<Post> listBUN = d.loadPostBun();
        ArrayList<Images> listImg = d.loadImage1();
        ArrayList<Post> listBĐVN1 = d.loadPostBĐVN1();
        ArrayList<Post> listPL1 = d.loadPostPreLeg1();
        ArrayList<Post> listLL1 = d.loadPostLaLiga1();
        ArrayList<Post> listSA1 = d.loadPostSerieA1();
        ArrayList<Post> listL11 = d.loadPostLig11();
        ArrayList<Post> listBUN1 = d.loadPostBun1();
        request.setAttribute("newCN", listCN);
        request.setAttribute("newCN1", listCN1);
        request.setAttribute("newBĐVN", listBĐVN);
        request.setAttribute("newPL", listPL);
        request.setAttribute("newLL", listLL);
        request.setAttribute("newSA", listSA);
        request.setAttribute("newL1", listL1);
        request.setAttribute("newBUN", listBUN);
        request.setAttribute("newBĐVN1", listBĐVN1);
        request.setAttribute("newPL1", listPL1);
        request.setAttribute("newLL1", listLL1);
        request.setAttribute("newSA1", listSA1);
        request.setAttribute("newL11", listL11);
        request.setAttribute("newBUN1", listBUN1);
        request.setAttribute("newImg", listImg);
        request.getRequestDispatcher("html/body.jsp").forward(request, response);
        
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
