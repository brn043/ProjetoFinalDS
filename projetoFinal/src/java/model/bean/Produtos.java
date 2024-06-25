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
public class Produtos {

    private int id_produto;
    private String nome;
    private int categoria;
    private int quantidade;
    private int tamanho;
    private float preco;
    private String descricao;
    private String img;
    private String precoFormatado;

    public Produtos() {
    }

    public Produtos(int id_produto, String nome, int categoria, int quantidade, int tamanho, float preco, String descricao, String img, String precoFormatado) {
        this.id_produto = id_produto;
        this.nome = nome;
        this.categoria = categoria;
        this.quantidade = quantidade;
        this.tamanho = tamanho;
        this.preco = preco;
        this.descricao = descricao;
        this.img = img;
        this.precoFormatado = precoFormatado;
    }

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getCategoria() {
        return categoria;
    }

    public void setCategoria(int categoria) {
        this.categoria = categoria;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public int getTamanho() {
        return tamanho;
    }

    public void setTamanho(int tamanho) {
        this.tamanho = tamanho;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
    
    public String getPrecoFormatado() {
        return precoFormatado;
    }

    public void setPrecoFormatado(String precoFormatado) {
        this.precoFormatado = precoFormatado;
    }

}
