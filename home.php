<?php

$smarty = new Template();


$smarty->assign('BANNER', Rotas::ImageLink('banner.jpg', 900, 300));
$smarty->display('home.tpl');
require_once Rotas::get_Pasta_Controller().'/produtos.php';
