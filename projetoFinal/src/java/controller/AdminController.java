/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.bean.Usuarios;
import model.dao.UsuariosDAO;

/**
 *
 * @author Bruno
 */
public class AdminController extends HttpServlet {

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
        if (url.equals("/adicionar-usuario")) {
            String nextPage = "/WEB-INF/jsp/addAdmin.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else {
            String nextPage = "/WEB-INF/jsp/gerenciarUsuarios.jsp";
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
        String url = request.getServletPath();
        if (url.equals("/adicionar-usuario")) {
            String nextPage = "/WEB-INF/jsp/controleAdministrador.jsp";
            Usuarios user = new Usuarios();
            UsuariosDAO valida = new UsuariosDAO();

            user.setNome(request.getParameter("nome"));
            user.setEmail(request.getParameter("email"));
            user.setSenha(request.getParameter("senha"));
            user.setCpf(request.getParameter("cpf"));
            user.setTelefone(request.getParameter("telefone"));
            String data = request.getParameter("dataNascimento");
            user.setDataNascimento((Date.valueOf(data)));
            int acessoUsuario = 1;
            user.setAcesso(acessoUsuario);

            try {
                valida.cadastrar(user);
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            } catch (Exception e) {
                nextPage = "/WEB-INF/jsp/controleAdministrador.jsp";
                request.setAttribute("errorMessage", "Usuário ou senha inválidos");
                RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
                dispatcher.forward(request, response);
            }
        }
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
