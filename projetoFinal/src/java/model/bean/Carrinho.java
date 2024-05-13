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
public class Carrinho {
    private String img;
    private int id_compra;
    private String produto;
    private float preco;
    private int quantidade;
    private String tamanho;
    private float total;
    private int id_cliente;

    public Carrinho() {
    }

    public Carrinho(String img, int id_compra, String produto, float preco, int quantidade, String tamanho, float total, int id_cliente) {
        this.img = img;
        this.id_compra = id_compra;
        this.produto = produto;
        this.preco = preco;
        this.quantidade = quantidade;
        this.tamanho = tamanho;
        this.total = total;
        this.id_cliente = id_cliente;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getId_compra() {
        return id_compra;
    }

    public void setId_compra(int id_compra) {
        this.id_compra = id_compra;
    }

    public String getProduto() {
        return produto;
    }

    public void setProduto(String produto) {
        this.produto = produto;
    }

    public float getPreco() {
        return preco;
    }

    public void setPreco(float preco) {
        this.preco = preco;
    }

    public int getQuantidade() {
        return quantidade;
    }

    public void setQuantidade(int quantidade) {
        this.quantidade = quantidade;
    }

    public String getTamanho() {
        return tamanho;
    }

    public void setTamanho(String tamanho) {
        this.tamanho = tamanho;
    }

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }
    
    
}
