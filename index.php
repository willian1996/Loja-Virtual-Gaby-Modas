<?php
require './lib/autoload.php';


$smarty = new Template();

Rotas::get_Pagina();





//valores para o template
$smarty->assign('NOME', 'WILLIAN SALES GABRIEL');


echo Rotas::get_SiteHOME()."<br>";



$smarty->display('index.tpl');
