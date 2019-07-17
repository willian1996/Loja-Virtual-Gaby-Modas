<?php
if(isset($_SESSION['PRO'])){
    $smarty = new Template();

    $carrinho = new Carrinho();

    $smarty->assign('PRO', $carrinho->GetCarrinho());

    $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));

    $smarty->assign('TEMA', Rotas::get_SiteTEMA());
    
    $pedido = new Pedidos();
    $cliente = 1;
    $codigo = $_SESSION['pedido'];
    $ref = '0544551ref';
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


?>
