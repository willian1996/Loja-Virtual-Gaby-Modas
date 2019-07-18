<?php

$smarty = new Template();


$pedidos = new Pedidos();

Login::MenuCliente();






$smarty->display('cliente_itens.tpl');
