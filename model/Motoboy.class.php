<?php 

class Motoboy extends Conexao{
    private $custoPorKM;
    private $remetente;
    private $cidade;
    
    public function __construct(){
        parent::__construct();
    }
    
    
    //FUNÇÃO PARA SETTAR DADOS 
    public function Preparar($custoPorKM, $remetente, $cidade){
        $this->setCustoPorKM($custoPorKM);
        $this->setRemetente($remetente);
        $this->setCidade($cidade);
    }
    
    
    //FUNÇÃO PARA SALVAR NO BANCO DE DADOS 
    public function Inserir(){
        
    }
    
    
    // FUNÇÃO PARA EDITAR NO BANCO DE DADOS 
    public function Editar(){
        
    }
    
    //FUNÇÃO PARA PEGAR O ENDEREÇO DO REMETENTE DO BANCO DE DADOS
    public function pegarRemetente(){
        
    }
    
    
    //FUNÇÃO PARA ENVIAR E TRAZER DADOS DA API DO GOOGLE 
    //PARAMETRO É O ENDEREÇO DO CLIENTE
    public function GetDistancia($destino){
        $origins = $this->pegarRemetente();
        $destinations = $this->$destino;
        $mode = "CAR";
        $language = "PT";
        $sensor = "false";
        
        
        //Buscar a API aqui enviandos os parametros acima
        
    }
    
    
    
    
    
    
    
    
    //Getters 
    
    public function getCustoPorKM(){
        return $this->custoPorKM;
    }
    
    public function getRemetente(){
        return $this->remetente;
    }
    
    public function getCidade(){
        return $this->cidade;
    }
    
    //Setters
    
    public function setCustoPorKM($custoPorKM){
        $this->custoPorKM = $custoPorKM;
    }
    
    public function setRemetente($remetente){
        $this->remetente = $remetente;
    }
    public function setCidade($cidade){
        $this->cidade = $cidade;
    }
    
    
    
    
    
    
    
}