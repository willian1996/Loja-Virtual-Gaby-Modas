<?php 
$smarty = new Template();


$pedidos = new Pedidos();



if(isset(Rotas::$pag[1])){
    $id = Rotas::$pag[1];
    $pedidos->GetPedidosCliente($id);
}else{
    $pedidos->GetPedidosCliente();
}

$smarty->assign('PEDIDOS', $pedidos->GetItens());
$smarty->assign('PAG_ITENS', Rotas::pag_ClienteItens());

if($pedidos->TotalDados() > 0){
    $smarty->display('adm_pedidos.tpl');
}else{
    echo '<div class="alert alert-danger">Nenhum pedido para este cliente</div>';
}









?>
