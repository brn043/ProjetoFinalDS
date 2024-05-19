/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Estoque;
import model.bean.Produtos;
import model.dao.EstoqueDAO;
import model.dao.ProdutosDAO;

/**
 *
 * @author Bruno
 */
public class ListarProdutosController extends HttpServlet {

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
        ProdutosDAO pDao = new ProdutosDAO();
        String url = request.getServletPath();
        String nextPage;
        if (url.equals("/buscar")) {
            if (request.getParameter("busca").trim().isEmpty()) {
                List<Produtos> produto = pDao.ler();

                request.setAttribute("produtos", produto);
                nextPage = "/WEB-INF/jsp/produtos.jsp";

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            } else {
                String busca = "%" + request.getParameter("busca") + "%";

                List<Produtos> produto = pDao.busca(busca);

                request.setAttribute("produtos", produto);
                nextPage = "/WEB-INF/jsp/produtos.jsp";

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }
        }
        if (url.equals("/buscar-categoria")) {
            int busca = Integer.parseInt(request.getParameter("categoria"));
            if (busca == 0) {
                List<Produtos> produto = pDao.ler();

                request.setAttribute("produtos", produto);
                nextPage = "/WEB-INF/jsp/produtos.jsp";

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            } else {
                List<Produtos> produto = pDao.buscaCategoria(busca);

                request.setAttribute("produtos", produto);
                nextPage = "/WEB-INF/jsp/produtos.jsp";

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }
        }
        if (url.equals("/ver-produto")) {
            int id = Integer.parseInt(request.getParameter("id"));
            List<Produtos> produto = pDao.verProduto(id);
            request.setAttribute("produtos", produto);
            
            EstoqueDAO eDao = new EstoqueDAO();
            String nome = request.getParameter("name");
            List<Estoque> tamanhos = eDao.listarTamanhos(nome);
            if(tamanhos != null){
                request.setAttribute("tamanhos", tamanhos);
            }else{
                request.setAttribute("message", "<i class=\"fa-regular fa-face-frown\"></i> Produto Indisponível");
            }
            
            nextPage = "/WEB-INF/jsp/produtoInfos.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
            
        } else {
            List<Produtos> produto = pDao.ler();

            request.setAttribute("produtos", produto);
            nextPage = "/WEB-INF/jsp/produtos.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
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
