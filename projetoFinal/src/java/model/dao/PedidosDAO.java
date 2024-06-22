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
import model.bean.Pedidos;
import model.bean.Usuarios;

/**
 *
 * @author Bruno
 */
public class PedidosDAO {
    
        public void registrar(Pedidos pedido) {
                
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("INSERT INTO historico (produto, preco, quantidade, total, dataPedido, situacao, id_cliente) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)");
            stmt.setString(1, pedido.getProduto());
            stmt.setFloat(2, pedido.getPreco());
            stmt.setInt(3, pedido.getQuantidade());
            stmt.setFloat(4, pedido.getTotal());
            stmt.setDate(5, pedido.getDataPedido());
            stmt.setString(6, pedido.getSituacao());
            stmt.setInt(7, Usuarios.getId_usuario());
            
            stmt.executeUpdate();
            
            rs.close();
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public List<Pedidos> ler() {
        List<Pedidos> pedidos = new ArrayList();
        
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM historico WHERE id_cliente = ?");
            stmt.setInt(1, Usuarios.getId_usuario());
            rs = stmt.executeQuery();

            while (rs.next()) {
                Pedidos p = new Pedidos();
                p.setId_pedido(rs.getInt("id_pedido"));
                p.setProduto(rs.getString("produto"));
                p.setPreco(rs.getFloat("preco"));
                p.setQuantidade(rs.getInt("quantidade"));
                p.setTotal(rs.getFloat("total"));
                p.setDataPedido(rs.getDate("dataPedido"));
                p.setSituacao(rs.getString("situacao"));
                pedidos.add(p);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return pedidos;
    }
}
