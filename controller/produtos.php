<?php
$smarty = new Template();
$smarty->display('produtos.tpl');


$produtos = new Produtos();
$produtos->GetProdutos();

var_dump($produtos->GetItens());


?>


