<?php

if(!Login::Logado()){
    Login::AcessoNegado();
    Rotas::Redirecionar(0, Rotas::pag_ClienteLogin());
}else{
    
    if(isset($_SESSION['PRO'])){


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

        $pedido = new Pedidos();
        $cliente = 1;
        $codigo = $_SESSION['PED']['pedido'];
        $ref = $_SESSION['PED']['ref'];
        $freteValor = 22.90;
        $freteTipo = "pac";



        if($pedido->PedidoGravar($cliente, $codigo, $ref, $freteValor, $freteTipo)){
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
