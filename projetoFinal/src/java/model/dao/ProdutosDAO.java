/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.dao;

import conexao.Conexao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import model.bean.Produtos;

/**
 *
 * @author Bruno
 */
public class ProdutosDAO {

    Locale reais = new Locale("pt", "BR");
    NumberFormat formatar = NumberFormat.getCurrencyInstance(reais);

    public List<Produtos> ler() {
        List<Produtos> produtos = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produtos");
            rs = stmt.executeQuery();

            while (rs.next()) {
                Produtos produto = new Produtos();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setPrecoFormatado(formatar.format(produto.getPreco()));
                produto.setDescricao(rs.getString("descricao"));
                produto.setImg(rs.getString("image"));
                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }

    public List<Produtos> verProduto(int id) {
        List<Produtos> produtos = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produtos WHERE id_produto = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Produtos produto = new Produtos();
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setPrecoFormatado(formatar.format(produto.getPreco()));
                produto.setDescricao(rs.getString("descricao"));
                produto.setImg(rs.getString("image"));
                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }

    public List<Produtos> busca(String busca) {
        List<Produtos> produtos = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produtos WHERE nome LIKE ? OR descricao LIKE ?");
            stmt.setString(1, busca);
            stmt.setString(2, busca);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Produtos produto = new Produtos();
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setPrecoFormatado(formatar.format(produto.getPreco()));
                produto.setDescricao(rs.getString("descricao"));
                produto.setImg(rs.getString("image"));
                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }

    public List<Produtos> buscaCategoria(int busca) {
        List<Produtos> produtos = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM produtos WHERE categoria = ?");
            stmt.setInt(1, busca);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Produtos produto = new Produtos();
                produto.setId_produto(rs.getInt("id_produto"));
                produto.setNome(rs.getString("nome"));
                produto.setCategoria(rs.getInt("categoria"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setPreco(rs.getFloat("preco"));
                produto.setPrecoFormatado(formatar.format(produto.getPreco()));
                produto.setDescricao(rs.getString("descricao"));
                produto.setImg(rs.getString("image"));
                produtos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return produtos;
    }

    public void cadastrarProduto(Produtos produto) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("CALL inserir_produto(?, ?, ?, ?, ?, ?, ?)");
            stmt.setString(1, produto.getImg());
            stmt.setString(2, produto.getNome());
            stmt.setInt(3, produto.getCategoria());
            stmt.setInt(4, produto.getQuantidade());
            stmt.setInt(5, produto.getTamanho());
            stmt.setFloat(6, produto.getPreco());
            stmt.setString(7, produto.getDescricao());

            stmt.executeUpdate();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deletarProduto(int id) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM produtos WHERE id_produto = ?");
            stmt.setInt(1, id);

            stmt.executeUpdate();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

    }

}
