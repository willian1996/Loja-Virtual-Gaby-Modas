<?php     
 
if(isset($_SESSION['PRO'])){
    $smarty = new Template();

    $carrinho = new Carrinho();
    $motoboy = new Motoboy();
    
    

    $smarty->assign('PRO', $carrinho->GetCarrinho());
    $smarty->assign('TOTAL', Sistema::MoedaBR($carrinho->GetTotal()));
    
    //Login para calcular o frete
    if(Login::Logado()){
        //pegando o endereço do cliente
        $cli_bairro = $_SESSION['CLI']['cli_bairro'];
        $cli_cidade = $_SESSION['CLI']['cli_cidade'];
        
        //definindo o valor do frete
        $frete = $motoboy->ValorPorKM() * $motoboy->getKM($cli_bairro, $cli_cidade);
        
        $frete_tipo = "Motoboy";
        //frete gratis abaixo de 2,00
        if($frete < 2){
            $frete = 0;
            $frete_tipo = "Grátis";
        }
        $fretePreco = ceil($frete);
        $smarty->assign('FRETE_PRECO', Sistema::MoedaBR($fretePreco));
        $smarty->assign('FRETE_TIPO', "Tipo: ".$frete_tipo);
    }else{
        $smarty->assign('FRETE_PRECO', "?");
        $smarty->assign('FRETE_TIPO', "<button class='btn btn-info btn-block'>Faça o login para calcular frete</button>");
    }
    
    

    $smarty->assign('PAG_PRODUTOS', Rotas::pag_Produtos());

    $smarty->assign('PAG_CARRINHO_ALTERAR', Rotas::pag_CarrinhoAlterar());

    $smarty->assign('PAG_CONFIRMAR', Rotas::pag_PedidoConfirmar());

    $smarty->assign('PESO', number_format($carrinho->GetPeso(),3,'.',''));

    $smarty->display('carrinho.tpl');




}else{
    echo '<h4 id="tabelacarrinho" class="alert alert-danger"> Seu carrinho está vazio!</h4>
<h4 class="alert alert-danger">Adicione produtos clicando no botão “Comprar” na página de produto.</h4> ';

    Rotas::Redirecionar(5,Rotas::pag_Produtos());
}


?>
