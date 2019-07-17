<?php
$smarty = new Template();
$login = new Login();

if(isset($_POST['txt_email']) && isset($_POST['txt_senha'])){
    $user = $_POST['txt_email'];
    $senha = $_POST['txt_senha'];
    $login->GetLogin($user, $senha);
}

$smarty->display('login.tpl');




?>