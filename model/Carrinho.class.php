<?php

class Carrinho{
    private $total_valor;
    private $total_peso;
    private $itens = array();

    public function GetCarrinho($sessao = null){

        $i = 1; $peso = 0;


        foreach($_SESSION['PRO'] as $lista){
            $sub = ($lista['VALOR_US'] * $lista['QTD']);

            $this->itens[$i] = array(
                'pro_id' => $lista['ID'],
                'pro_nome' => $lista['NOME'],
                'pro_valor' => $lista['VALOR'],
                'pro_valor_us' => $lista['VALOR_US'],
                'pro_peso' => $lista['PESO'],
                'pro_qtd' => $lista['QTD'],
                'pro_img' => $lista['IMG'],
                'pro_link' => $lista['LINK'],
                'pro_subTotal' =>Sistema::MoedaBR($sub),
                'pro_subTotal_us' => $sub
            );
            $i++;
        }

        if(count($this->itens) > 0){
            return $this->itens;
        }else{
            echo "<h4 class='alert alert-danger'>Não há produtos no carrinho </h4>";
        }

    }









}
