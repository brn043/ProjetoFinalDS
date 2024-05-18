/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

/**
 *
 * @author Bruno
 */
public class Estoque {
    private int id_estoque;
    private String nome_produto;
    private String tamanho;

    public Estoque() {
    }

    public Estoque(int id_estoque, String nome_produto, String tamanho) {
        this.id_estoque = id_estoque;
        this.nome_produto = nome_produto;
        this.tamanho = tamanho;
    }

    public int getId_estoque() {
        return id_estoque;
    }

    public void setId_estoque(int id_estoque) {
        this.id_estoque = id_estoque;
    }

    public String getNome_produto() {
        return nome_produto;
    }

    public void setNome_produto(String nome_produto) {
        this.nome_produto = nome_produto;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }
    
}
