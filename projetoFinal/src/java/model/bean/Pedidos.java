/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model.bean;

import java.sql.Date;

/**
 *
 * @author Bruno
 */
public class Pedidos {
    
    private int id_pedido;
    private String produto;
    private float preco;
    private int quantidade;
    private float total;
    private Date dataPedido;
    private String situacao;
    private int id_cliente;
    private String precoFormatado;
    private String totalFormatado;

    public Pedidos() {
    }  

    public Pedidos(int id_pedido, String produto, float preco, int quantidade, float total, Date dataPedido, String situacao, int id_cliente, String precoFormatado, String totalFormatado) {
        this.id_pedido = id_pedido;
        this.produto = produto;
        this.preco = preco;
        this.quantidade = quantidade;
        this.total = total;
        this.dataPedido = dataPedido;
        this.situacao = situacao;
        this.id_cliente = id_cliente;
        this.precoFormatado = precoFormatado;
        this.totalFormatado = totalFormatado;
    }

    public int getId_pedido() {
        return id_pedido;
    }

    public void setId_pedido(int id_pedido) {
        this.id_pedido = id_pedido;
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

    public float getTotal() {
        return total;
    }

    public void setTotal(float total) {
        this.total = total;
    }

    public Date getDataPedido() {
        return dataPedido;
    }

    public void setDataPedido(Date dataPedido) {
        this.dataPedido = dataPedido;
    }

    public String getSituacao() {
        return situacao;
    }

    public void setSituacao(String situacao) {
        this.situacao = situacao;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getPrecoFormatado() {
        return precoFormatado;
    }

    public void setPrecoFormatado(String precoFormatado) {
        this.precoFormatado = precoFormatado;
    }

    public String getTotalFormatado() {
        return totalFormatado;
    }

    public void setTotalFormatado(String totalFormatado) {
        this.totalFormatado = totalFormatado;
    }
    
    
    
}
