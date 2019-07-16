<?php
if(isset($_SESSION['PRO'])){
    $smarty = new Template();

    $carrinho = new Carrinho();

    $smarty->assign('PRO', $carrinho->GetCarrinho());

    $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));

    $smarty->assign('TEMA', Rotas::get_SiteTEMA());



    $smarty->display('pedido_finalizar.tpl');



}else{
    echo '<h4 class="alert alert-danger"> Seu carrinho está vazio!</h4>
<h4 class="alert alert-danger">Adicione produtos clicando no botão “Comprar” na página de produto.</h4> ';

    Rotas::Redirecionar(5,Rotas::pag_Produtos());
}


?>
