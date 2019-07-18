<?php
$smarty = new Template();
$login = new Login();

if(isset($_POST['txt_email']) && isset($_POST['txt_senha'])){
    $user = $_POST['txt_email'];
    $senha = $_POST['txt_senha'];
    $login->GetLogin($user, $senha);
}

if(Login::Logado()){
    $smarty->assign('USER', $_SESSION['CLI']['cli_nome']);
    $smarty->assign('PAG_LOGOFF', Rotas::pag_Logoff());
    Rotas::Redirecionar(0, Rotas::pag_ClienteConta());
}

$smarty->assign('LOGADO', Login::Logado());

$smarty->display('login.tpl');




?>