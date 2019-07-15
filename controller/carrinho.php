<?php
if(isset($_SESSION['PRO'])){
    $smarty = new Template();

    $carrinho = new Carrinho();

    $smarty->assign('PRO', $carrinho->GetCarrinho());
    $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));


    $smarty->display('carrinho.tpl');


}else{
    echo '<h4 class="alert alert-danger"> Não possui produtos no carrinho! </h4>';

    Rotas::Redirecionar(4,Rotas::pag_Produtos());
}


?>
