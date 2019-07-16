<?php
if(isset($_SESSION['PRO'])){
    $smarty = new Template();

    $carrinho = new Carrinho();

    $smarty->assign('PRO', $carrinho->GetCarrinho());
    $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));

    $smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());

    $smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());

    $smarty->assign('PAG_FINALIZAR', Rotas::pag_PedidoFinzalizar());


    $smarty->display('pedido_confirmar.tpl');



}else{
    echo '<h4 class="alert alert-danger"> Seu carrinho está vazio!</h4>
<h4 class="alert alert-danger">Adicione produtos clicando no botão “Comprar” na página de produto.</h4> ';

    Rotas::Redirecionar(5,Rotas::pag_Produtos());
}


?>
