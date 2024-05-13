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
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Carrinho;
import model.dao.CarrinhoDAO;

/**
 *
 * @author Bruno
 */
public class CarrinhoController extends HttpServlet {

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
        String url = request.getServletPath();
        int id_usuario = 1;

        Carrinho cart = new Carrinho();
        CarrinhoDAO cDao = new CarrinhoDAO();

        if (url.equals("/adicionar")) {
            cart.setImg(request.getParameter("img"));
            cart.setProduto(request.getParameter("produto"));
            cart.setPreco(Float.parseFloat(request.getParameter("preco")));
            cart.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
            cart.setTamanho(request.getParameter("tamanho"));
            cart.setTotal(cart.getPreco()*cart.getQuantidade());
            cart.setId_cliente(id_usuario);
            
            cDao.adicionar(cart);
            
        } else if (url.equals("/incrementar")) {
            int id_compra = Integer.parseInt(request.getParameter("id"));
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));
            float preco = Float.parseFloat(request.getParameter("preco"));
            float total = Float.parseFloat(request.getParameter("total"));
            quantidade = quantidade + 1;
            total = preco * quantidade;

            cDao.update(quantidade, id_compra, total);

            List<Carrinho> produto = cDao.ler(id_usuario);

            request.setAttribute("produtos", produto);
            String nextPage = "/WEB-INF/jsp/carrinho.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        }
        if (url.equals("/diminuir")) {
            int id_compra = Integer.parseInt(request.getParameter("id"));
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));
            float preco = Float.parseFloat(request.getParameter("preco"));
            float total = Float.parseFloat(request.getParameter("total"));
            quantidade = quantidade - 1;
            total = preco * quantidade;

            if (quantidade <= 0) {
                cDao.delete(id_compra);
            } else {
                cDao.update(quantidade, id_compra, total);
            }
            List<Carrinho> produto = cDao.ler(id_usuario);

            request.setAttribute("produtos", produto);
            String nextPage = "/WEB-INF/jsp/carrinho.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);

        } else {
            List<Carrinho> produto = cDao.ler(id_usuario);

            request.setAttribute("produtos", produto);
            String nextPage = "/WEB-INF/jsp/carrinho.jsp";

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
