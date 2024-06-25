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
import model.bean.Enderecos;
import model.bean.Usuarios;

/**
 *
 * @author Senai
 */
public class EnderecosDAO {

    public List<Enderecos> listarEnderecos() {
        List<Enderecos> enderecos = new ArrayList();
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT * FROM endereco WHERE id_cliente = ?");
            stmt.setInt(1, Usuarios.getId_usuario());
            rs = stmt.executeQuery();

            while (rs.next()) {
                Enderecos e = new Enderecos();
                e.setId_endereco(rs.getInt("id_endereco"));
                e.setCep(rs.getString("cep"));
                e.setRua(rs.getString("rua"));
                e.setNumero(rs.getString("numero"));
                e.setComplemento(rs.getString("complemento"));
                enderecos.add(e);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }

        return enderecos;
    }
    
    public void cadastrarEndereco(Enderecos endereco){
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("INSERT INTO endereco(id_cliente, cep, rua, numero, complemento) VALUES (?, ?, ?, ?, ?)");
            stmt.setInt(1, Usuarios.getId_usuario());
            stmt.setString(2, endereco.getCep());
            stmt.setString(3, endereco.getRua());
            stmt.setString(4, endereco.getNumero());
            stmt.setString(5, endereco.getComplemento());
            stmt.executeUpdate();
            
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    public void deletarEndereco(int id_endereco){
        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;

            stmt = conexao.prepareStatement("DELETE FROM endereco WHERE id_endereco = ?");
            stmt.setInt(1, id_endereco);
            
            stmt.executeUpdate();
            
            stmt.close();
            conexao.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
