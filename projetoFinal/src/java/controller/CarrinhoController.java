/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.List;
import java.util.Locale;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Carrinho;
import model.bean.Usuarios;
import model.dao.CarrinhoDAO;
import model.dao.EstoqueDAO;

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
        Usuarios user = new Usuarios();

        if (user.getId_usuario() == 0) {
            String nextPage = "/WEB-INF/jsp/login.jsp";
            RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        }

        CarrinhoDAO cDao = new CarrinhoDAO();

        if (url.equals("/adicionar")) {
            Carrinho cart = new Carrinho();
            cart.setProduto(request.getParameter("produto"));
            cart.setTamanho(request.getParameter("tamanho"));

            String nome = request.getParameter("produto");
            String tamanho = request.getParameter("tamanho");

            EstoqueDAO eDao = new EstoqueDAO();
            int quantidade_disponivel = eDao.validarQuantidade(nome, tamanho);

            cart = cDao.validar(cart);

            if (cart.getId_compra() > 0 & cart.getQuantidade() < quantidade_disponivel) {
                int id_compra = cart.getId_compra();
                int quantidade = cart.getQuantidade();
                float preco = cart.getPreco();
                float total = cart.getTotal();
                quantidade = quantidade + 1;
                total = preco * quantidade;

                cDao.update(quantidade, id_compra, total);

                List<Carrinho> produto = cDao.ler(Usuarios.getId_usuario());
                float total_carrinho = cDao.somaTotal(Usuarios.getId_usuario());
                Locale moedaBr = new Locale("pt", "BR");
                NumberFormat valorBr = NumberFormat.getCurrencyInstance(moedaBr);
                String total_cart = (valorBr.format(total_carrinho));

                request.setAttribute("total", total_cart);
                request.setAttribute("produtos", produto);
                String nextPage = "/WEB-INF/jsp/carrinho.jsp";

                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            } else if (cart.getId_compra() > 0 & cart.getQuantidade() >= quantidade_disponivel) {
            } else {
                cart.setImg(request.getParameter("img"));
                cart.setProduto(request.getParameter("produto"));
                cart.setPreco(Float.parseFloat(request.getParameter("preco")));
                cart.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
                cart.setTamanho(request.getParameter("tamanho"));
                cart.setTotal(cart.getPreco() * cart.getQuantidade());
                cart.setId_cliente(Usuarios.getId_usuario());

                cDao.adicionar(cart);
            }
        } else if (url.equals("/incrementar")) {
            int id_compra = Integer.parseInt(request.getParameter("id"));
            int quantidade = Integer.parseInt(request.getParameter("quantidade"));
            float preco = Float.parseFloat(request.getParameter("preco"));
            float total = Float.parseFloat(request.getParameter("total"));
            quantidade = quantidade + 1;
            total = preco * quantidade;

            String nome = request.getParameter("produto");
            String tamanho = request.getParameter("tamanho");

            EstoqueDAO eDao = new EstoqueDAO();
            int quantidade_disponivel = eDao.validarQuantidade(nome, tamanho);

            if (quantidade <= quantidade_disponivel) {
                cDao.update(quantidade, id_compra, total);

                List<Carrinho> produto = cDao.ler(Usuarios.getId_usuario());
                float total_carrinho = cDao.somaTotal(Usuarios.getId_usuario());
                Locale moedaBr = new Locale("pt", "BR");
                NumberFormat valorBr = NumberFormat.getCurrencyInstance(moedaBr);
                String total_cart = (valorBr.format(total_carrinho));

                request.setAttribute("total", total_cart);
                request.setAttribute("produtos", produto);
            }

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

            List<Carrinho> produto = cDao.ler(Usuarios.getId_usuario());
            float total_carrinho = cDao.somaTotal(Usuarios.getId_usuario());
            Locale moedaBr = new Locale("pt", "BR");
            NumberFormat valorBr = NumberFormat.getCurrencyInstance(moedaBr);
            String total_cart = (valorBr.format(total_carrinho));

            request.setAttribute("total", total_cart);
            request.setAttribute("produtos", produto);
            String nextPage = "/WEB-INF/jsp/carrinho.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);

        } else {
            Locale moedaBr = new Locale("pt", "BR");
            NumberFormat valorBr = NumberFormat.getCurrencyInstance(moedaBr);
            List<Carrinho> produto = cDao.ler(Usuarios.getId_usuario());
            request.setAttribute("produtos", produto);
            float total_carrinho = cDao.somaTotal(Usuarios.getId_usuario());

            String total_cart = (valorBr.format(total_carrinho));
            request.setAttribute("total", total_cart);

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
