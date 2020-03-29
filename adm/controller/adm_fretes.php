<?php 
//Estanciando a classe template
$smarty = new Template();



//pegando os valores do formulario frete motoboy
if(isset($_POST['custoPorKM']) && isset($_POST['remetente'])){
    $custoPorKM = $_POST['custoPorKM'];
    $remetente = $_POST['remetente'];
    $cidade = $_POST['cidade'];
   
    $cidade = implode(",", $cidade);
    
    //Instanciando classe motoboy 
    $gravar = new Motoboy();
    $gravar->Preparar($custoPorKM, $remetente, $cidade);
    
    //Gravando no banco de dados
    if($gravar->Inserir()){
        echo "Dados inseridos com sucesso";
    }else{
        echo "Erro ao inserir dados";
    }
}







//Estanciando o template adm_fretes.tpl
$smarty->display('adm_fretes.tpl');