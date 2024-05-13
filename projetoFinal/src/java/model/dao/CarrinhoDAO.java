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
import java.util.ArrayList;
import java.util.List;
import model.bean.Carrinho;

/**
 *
 * @author Bruno
 */
public class CarrinhoDAO {

    public List<Carrinho> ler(int id) {
        List<Carrinho> carrinho = new ArrayList();
        Carrinho cart = new Carrinho();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM carrinho WHERE id_cliente = ?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            while (rs.next()) {
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

}
