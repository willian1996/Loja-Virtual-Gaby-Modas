<?php

$smarty = new Template();


if(isset($_POST['cli_nome']) and isset($_POST['cli_email']) and isset($_POST['cli_cpf'])){
    $cli_nome = $_POST['cli_nome'];
    $cli_sobrenome = $_POST['cli_sobrenome'];
    $cli_cpf       = $_POST['cli_cpf'];
    $cli_fone      = $_POST['cli_fone'];
    $cli_celular   = $_POST['cli_celular'];
    $cli_endereco  = $_POST['cli_endereco'];
    $cli_numero    = $_POST['cli_numero'];
    $cli_ponto_referencia = $_POST['cli_ponto_referencia'];
    $cli_bairro    = $_POST['cli_bairro'];
    $cli_cidade    = $_POST['cli_cidade'];
    $cli_cep       = $_POST['cli_cep'];
    $cli_email     = $_POST['cli_email'];
    $cli_senha     = Sistema::GerarSenha();
    $cli_data_cad  = Sistema::DataAtualUS();
    $cli_hora_cad  = Sistema::HoraAtual();

    $clientes = new Clientes();

    $clientes->Preparar($cli_nome, $cli_sobrenome, $cli_cpf, $cli_fone, $cli_celular, $cli_endereco, $cli_numero, $cli_ponto_referencia, $cli_bairro, $cli_cidade, $cli_cep, $cli_email, $cli_data_cad, $cli_hora_cad, $cli_senha);

    if($clientes->Inserir()){
        





        $smarty->assign('NOME', $cli_nome);
        $smarty->assign('SITE', Config::SITE_NOME);
        $smarty->assign('EMAIL', $cli_email);
        $smarty->assign('SENHA', $cli_senha);
        $smarty->assign('PAG_MINHA_CONTA', Rotas::pag_ClienteConta());
        $smarty->assign('SITE_HOME', Rotas::get_SiteHOME());
        
    
    
        
        $email = new EnviarEmail();
        
        $assunto = "Cadastro Efetuado - ".Config::SITE_NOME;
        $msg = $smarty->fetch('email_cliente_cadastro.tpl');
        $destinatarios = array($cli_email, Config::SITE_EMAIL_ADMIN);
            
        $email->Enviar($assunto, $msg, $destinatarios);

        echo '<script>alert("A sua senha foi enviada para o e-mail '.$cli_email.' faça o login");</script>';
        echo '<div class="alert alert-success"> Cadastrado com sucesso!
        <br> A sua senha foi enviada para o e-mail '.$cli_email.'<br> por favor depois altere essa senha na pagina minha conta</div>';
        Rotas::Redirecionar(6, Rotas::pag_ClienteLogin());
        
        
    }
    
    
    
}else{
    $smarty->display('cadastro.tpl');
}




