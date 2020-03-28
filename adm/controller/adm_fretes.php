<?php
//Estanciando a classe template
$smarty = new Template();



//pegando os valores do formulario frete motoboy
if(isset($_POST['custoPorKM']) && isset($_POST['remetente'])){
    $custoPorKM = $_POST['custoPorKM'];
    $remetente = $_POST['remetente'];
    $cidade = $_POST['cidade'];
    $cidade = implode(",", $cidade);
}







//Estanciando o template adm_fretes.tpl
$smarty->display('adm_fretes.tpl');