<?php

if(!Login::Logado()){
    Login::AcessoNegado();
    Rotas::Redirecionar(0, Rotas::pag_ClienteLogin());
}else{
    
    if(isset($_SESSION['PRO'])){

        if(!isset($_SESSION['PED']['frete'])){
        Rotas::Redirecionar(2, Rotas::pag_Carrinho().'#dadosfrete');
        exit('<h4 class="alert alert-danger"> Selecione o frete </h4>');
        }


        $smarty = new Template();

        $carrinho = new Carrinho();

        $ref_cod_pedido = date('ymdHms') . $_SESSION['CLI']['cli_id'];

        if(!isset($_SESSION['PED']['pedido'])){
            $_SESSION['PED']['pedido'] = $ref_cod_pedido;
        }

        if(!isset($_SESSION['PED']['ref'])){
            $_SESSION['PED']['ref'] = $ref_cod_pedido;
        }

        $smarty->assign('PRO', $carrinho->GetCarrinho());

        $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));

        $smarty->assign('TEMA', Rotas::get_SiteTEMA());

        $smarty->assign('FRETE', Sistema::MoedaBR($_SESSION['PED']['frete']));

        $smarty->assign('TOTAL_FRETE', Sistema::MoedaBR($_SESSION['PED']['total_com_frete']));

        $pedido = new Pedidos();
        $cliente = 1;
        $codigo = $_SESSION['PED']['pedido'];
        $ref = $_SESSION['PED']['ref'];
        $frete = $_SESSION['PED']['frete'];



        if($pedido->PedidoGravar($cliente, $codigo, $ref, $frete)){
            $pedido->LimparSessoes();
        }



        $smarty->display('pedido_finalizar.tpl');



    }else{
        echo '<h4 class="alert alert-danger"> Seu carrinho está vazio!</h4>
    <h4 class="alert alert-danger">Adicione produtos clicando no botão “Comprar” na página de produto.</h4> ';

        Rotas::Redirecionar(1,Rotas::pag_Produtos());
    }
    
}


?>
