<?php
$smarty = new Template();

$carrinho = new Carrinho();

$smarty->assign('PRO', $carrinho->GetCarrinho());


$smarty->display('carrinho.tpl');

var_dump($carrinho->GetCarrinho());
?>
