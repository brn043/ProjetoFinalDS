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
import java.util.ArrayList;
import java.util.List;
import model.bean.Carrinho;
import model.bean.Produtos;
import model.bean.Usuarios;

/**
 *
 * @author Bruno
 */
public class CarrinhoDAO {

    public List<Carrinho> ler(int id) {
        List<Carrinho> carrinho = new ArrayList();
        
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM carrinho WHERE id_cliente = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Carrinho cart = new Carrinho();
                cart.setImg(rs.getString("image"));
                cart.setId_compra(rs.getInt("id_compra"));
                cart.setProduto(rs.getString("produto"));
                cart.setPreco(rs.getFloat("preco"));
                cart.setQuantidade(rs.getInt("quantidade"));
                cart.setTamanho(rs.getString("tamanho"));
                cart.setTotal(rs.getFloat("total"));
                carrinho.add(cart);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return carrinho;
    }

    public void update(int quantidade, int id, float total) {

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("UPDATE carrinho SET quantidade = ? , total = ? WHERE id_compra = ?");
            stmt.setInt(1, quantidade);
            stmt.setFloat(2, total);
            stmt.setInt(3, id);
            stmt.executeUpdate();

            stmt.executeUpdate();
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void delete(int id){
    
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("DELETE FROM carrinho WHERE id_compra = ?");
            stmt.setInt(1, id);
            stmt.executeUpdate();

            stmt.executeUpdate();
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void adicionar(Carrinho cart){
        
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("INSERT INTO carrinho (image, produto, preco, quantidade, tamanho, total, id_cliente) VALUES (?,?,?,?,?,?,?)");
            stmt.setString(1, cart.getImg());
            stmt.setString(2, cart.getProduto());
            stmt.setFloat(3, cart.getPreco());
            stmt.setInt(4, cart.getQuantidade());
            stmt.setString(5, cart.getTamanho());
            stmt.setFloat(6, cart.getTotal());
            stmt.setInt(7, cart.getId_cliente());
            stmt.executeUpdate();
            
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }       
    }
    
        public Carrinho validar(Carrinho produto) {
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT id_compra, quantidade, preco, total FROM carrinho WHERE produto = ? AND tamanho = ?");
            stmt.setString(1, produto.getProduto());
            stmt.setString(2, produto.getTamanho());
            rs = stmt.executeQuery();

            if (rs.next()) {
                produto.setId_compra(rs.getInt("id_compra"));
                produto.setQuantidade(rs.getInt("quantidade"));
                produto.setTotal(rs.getFloat("total"));
                produto.setPreco(rs.getFloat("preco"));
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
       return produto;
    }
        
    public Float somaTotal(int id_usuario){
        Float total_carrinho = null;
        
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT SUM(total) as total_soma FROM carrinho WHERE id_cliente = ?");
            stmt.setInt(1, Usuarios.getId_usuario());
            rs = stmt.executeQuery();

            if (rs.next()) {
                total_carrinho = (rs.getFloat("total_soma")); 
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }        
        return total_carrinho;
    }
}
