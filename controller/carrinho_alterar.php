<?php

if(!isset($_POST['pro_id']) || $_POST['pro_id'] < 1){
    echo '<h4 class="alert alert-danger"> Erro na operação! </h4>';
    Rotas::Redirecionar(1,Rotas::pag_Carrinho());
    exit;
}

if(!isset($_POST['pro_tamanho']) || $_POST['pro_tamanho'] == ""){
    echo '<script>alert("Eacolha o tamanho");</script>';
    echo "<script>javascript:history.back(-2)</script>";
    exit;
}

$id = (int)$_POST['pro_id'];
$tamanho = filter_var($_POST['pro_tamanho'], FILTER_SANITIZE_STRING);

$carrinho = new Carrinho();

 
try{
    $carrinho->CarrinhoADD($id, $tamanho);
}catch(Exception $e){
    echo '<h4 class="alert alert-danger"> Erro na operação! </h4>';
}

Rotas::Redirecionar(1,Rotas::pag_Carrinho());
