<?php
if(isset($_SESSION['PRO'])){

    if(!isset($_POST['frete_radio'])){
        Rotas::Redirecionar(2, Rotas::pag_Carrinho().'#dadosfrete');
        exit('<h4 class="alert alert-danger"> Selecione o frete </h4>');
    }


    $smarty = new Template();

    $carrinho = new Carrinho();

    $smarty->assign('PRO', $carrinho->GetCarrinho());

    $_SESSION['PED']['frete'] = $_POST['frete_radio'];

    $_SESSION['PED']['total_com_frete'] = ($_POST['frete_radio'] + $carrinho->GetTotal());

    $_SESSION['PED']['total_com_frete'];



    $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));

    $smarty->assign('FRETE', Sistema::MoedaBR($_SESSION['PED']['frete']));

    $smarty->assign('TOTAL_FRETE', Sistema::MoedaBR($_SESSION['PED']['total_com_frete']));

    $smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());

    $smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());

    $smarty->assign('PAG_FINALIZAR', Rotas::pag_PedidoFinzalizar()."#tabelafinalizar");

    $smarty->display('pedido_confirmar.tpl');



}else{
    echo '<h4 class="alert alert-danger"> Seu carrinho está vazio!</h4>
<h4 class="alert alert-danger">Adicione produtos clicando no botão “Comprar” na página de produto.</h4> ';

    Rotas::Redirecionar(5,Rotas::pag_Produtos());
}


?>