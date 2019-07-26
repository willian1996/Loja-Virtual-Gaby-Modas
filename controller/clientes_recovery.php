<?php
 
$smarty = new Template();

$cliente = new Clientes();

if(isset($_POST['cli_email'])){

    $cliente->setCli_email($_POST['cli_email']);

    if($cliente->GetClienteEmail($cliente->getCli_email()) > 0){
        $novasenha = Sistema::GerarSenha();
        $cliente->SenhaUpdate($novasenha, $cliente->getCli_email());
        
    }else{
        echo '<div class="alert alert-danger">E-mail não existe</div>';
    }
    
}else{
    $smarty->display('clientes_recovery.tpl');
}

