<?php

class Login extends Conexao{
    private $user;
    private $senha;
    
    public function __construct(){
        parent::__construct();
    }
    
    public function GetLogin($user, $senha){
        $this->setUser($user);
        $this->setSenha($senha);
        
        $query = "SELECT * FROM {$this->prefix}clientes WHERE cli_email = :email AND cli_pass = :senha";
        
        $params = array(
            ':email' => $this->getUser(), 
            ':senha' => $this->getSenha()
        
        );
            
        
            
        
        $this->ExecuteSQL($query, $params);
        
        if($this->TotalDados() > 0){
            $lista = $this->ListarDados();
            
            $_SESSION['CLI']['cli_id'] = $lista['cli_id'];
            $_SESSION['CLI']['cli_nome']      =  $lista['cli_nome'];
            $_SESSION['CLI']['cli_sobrenome'] =  $lista['cli_sobrenome'];
            $_SESSION['CLI']['cli_endereco']  =  $lista['cli_endereco'];
            $_SESSION['CLI']['cli_numero']    =  $lista['cli_numero'];
            $_SESSION['CLI']['cli_bairro']    =  $lista['cli_bairro'];
            $_SESSION['CLI']['cli_cidade']    =  $lista['cli_cidade'];
            $_SESSION['CLI']['cli_uf']        =  $lista['cli_uf'];
            $_SESSION['CLI']['cli_cpf']       =  $lista['cli_cpf'];
            $_SESSION['CLI']['cli_cep']       =  $lista['cli_cep'];
            $_SESSION['CLI']['cli_rg']        =  $lista['cli_rg'];
            $_SESSION['CLI']['cli_ddd']       =  $lista['cli_ddd'];
            $_SESSION['CLI']['cli_fone']      =  $lista['cli_fone'];
            $_SESSION['CLI']['cli_email']     =  $lista['cli_email'];
            $_SESSION['CLI']['cli_celular']   =  $lista['cli_celular'];
            $_SESSION['CLI']['cli_data_nasc'] =  $lista['cli_data_nasc'];
            $_SESSION['CLI']['cli_hora_cad']  =  $lista['cli_hora_cad'];
            $_SESSION['CLI']['cli_data_cad']  =  $lista['cli_data_cad'];
            $_SESSION['CLI']['cli_pass']      =  $lista['cli_pass']; 

            
        }else{
            
        }
        
    }
    
    static function AcessoNegado(){
        Rotas::Redirecionar(1, Rotas::pag_ClienteLogin());
        
    }
    
    static function Logado(){
        if(isset($_SESSION['CLI']['cli_email']) && isset($_SESSION['CLI']['cli_id'])){
            return true;
        }else{
            return false;
        }
    }
    
    static function Logoff(){
        unset($_SESSION['CLI']);
        echo '<h4 class="alert alert-success"> Saindo...</h4>';
        Rotas::Redirecionar(1, Rotas::get_SiteHOME());
    }
    
    //FUNÇÃO PARA MOSTRAR MENU DO CLIENTE 
    
    static function MenuCliente(){
        
     // verifo se não esta logado 
            if(!self::Logado()):

                self::AcessoNegado();
                Rotas::Redirecionar(0, Rotas::pag_ClienteLogin());
                              
                // caso nao redirecione  saiu  do bloco
                exit();
                            
            // caso esteja mostra a tela minha conta 
            else:
                
        $smarty = new Template();
        
        $smarty->assign('PAG_CONTA', Rotas::pag_ClienteConta());
        $smarty->assign('PAG_CARRINHO', Rotas::pag_Carrinho());
        $smarty->assign('PAG_LOGOFF', Rotas::pag_Logoff());
        /*
        $smarty->assign('PAG_CLIENTE_PEDIDOS', Rotas::pag_CLientePedidos());
        $smarty->assign('PAG_CLIENTE_DADOS', Rotas::pag_CLienteDados());
        $smarty->assign('PAG_CLIENTE_SENHA', Rotas::pag_CLienteSenha());
        */
        $smarty->assign('USER', $_SESSION['CLI']['cli_nome']);
        
        
        $smarty->display('menu_cliente.tpl');
        
              endif;
    }
    
    private function setUser($user){
        $this->user = $user;
    }
    
    private function setSenha($senha){
        $this->senha = /*Sistema::Criptografia(*/$senha/*)*/;
    }
    
    private function getUser(){
        return $this->user;
    }
    
    private function getSenha(){
        return $this->senha;
    }
    
    
    
    
    
    
}