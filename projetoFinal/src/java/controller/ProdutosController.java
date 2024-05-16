/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.annotation.MultipartConfig;
import model.bean.Produtos;
import model.dao.ProdutosDAO;

/**
 *
 * @author Bruno
 */
@MultipartConfig
public class ProdutosController extends HttpServlet {

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
        if (url.equals("/adicionar-produto")) {
            String nextPage = "/WEB-INF/jsp/addProduto.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else if (url.equals("/adicionar-usuario")) {
            String nextPage = "/WEB-INF/jsp/addAdmin.jsp";

            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else {
            String nextPage = "/WEB-INF/jsp/controleAdministrador.jsp";

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
        if (url.equals("/cadastrar-produto")) {
            try {
                Produtos p = new Produtos();
                ProdutosDAO pDao = new ProdutosDAO();

                p.setNome(request.getParameter("nome"));
                p.setCategoria(Integer.parseInt(request.getParameter("categoria")));
                p.setPreco(Float.parseFloat(request.getParameter("preco")));
                p.setQuantidade(Integer.parseInt(request.getParameter("quantidade")));
                p.setTamanho(Integer.parseInt(request.getParameter("tamanho")));
                p.setDescricao(request.getParameter("desc"));
                Part filePart = request.getPart("imagem");
                String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // Corrige problemas com o navegador IE
                if (fileName != null && !fileName.isEmpty()) {
                    String basePath = getServletContext().getRealPath("/") + "assets/produtos-img"; // Caminho para a pasta assets
                    File uploads = new File(basePath);
                    if (!uploads.exists()) {
                        uploads.mkdirs(); // Cria o diretório se não existir
                    }
                    File file = new File(uploads, fileName);

                    try (InputStream input = filePart.getInputStream()) {
                        Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
                    } catch (Exception e) {
                        e.printStackTrace(); // Trate as exceções de forma adequada
                    }

                    // Configurando apenas o caminho relativo da imagem no banco de dados
                    p.setImg("assets/produtos-img/" + fileName);
                } else {
                    p.setImg(null);
                }

                pDao.cadastrarProduto(p);

            } catch (Exception e) {
                e.printStackTrace();
            }
            String nextPage = "/WEB-INF/jsp/controleAdministrador.jsp";
            RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextPage);
            dispatcher.forward(request, response);
        } else {
            processRequest(request, response);
        }
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
