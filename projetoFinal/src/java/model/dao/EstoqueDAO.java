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
import model.bean.Estoque;
import model.bean.Produtos;

/**
 *
 * @author Bruno
 */
public class EstoqueDAO {

    public List<Estoque> listarTamanhos(String nome_produto) {
        List<Estoque> tamanhos = new ArrayList();

        try {
            Connection conexao = Conexao.conectar();
            PreparedStatement stmt = null;
            ResultSet rs = null;

            stmt = conexao.prepareStatement("SELECT produtos.nome AS nome, tamanhos.nome AS tamanho FROM produtos JOIN estoque ON produtos.nome = estoque.nome JOIN tamanhos ON estoque.tamanho = tamanhos.id_tamanho WHERE produtos.nome = (?) ORDER BY FIELD(tamanhos.nome, 'P', 'M', 'G', 'GG')");
            stmt.setString(1, nome_produto);
            rs = stmt.executeQuery();

            while (rs.next()) {
                Estoque produto = new Estoque();
                produto.setTamanho(rs.getString("tamanho"));
                tamanhos.add(produto);
            }
            rs.close();
            stmt.close();
            conexao.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return tamanhos;
    }

}
