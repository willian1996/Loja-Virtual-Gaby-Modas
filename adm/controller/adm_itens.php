<?php
$smarty = new Template();


if(!isset($_POST['cod_pedido'])){
    Rotas::Redirecionar(1, Rotas::pag_PedidosADM());
    exit();
}

$itens = new Itens();
$pedido = filter_var($_POST['cod_pedido'], FILTER_SANITIZE_STRING);

$itens->GetItensPedido($pedido);
$smarty->assign('ITENS', $itens->GetItens());
$smarty->assign('TOTAL', $itens->GetTotal());
$smarty->assign('PRO_INFO', Rotas::pag_ProdutosInfo());



$smarty->display('adm_itens.tpl');






?>
