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
        $query = "INSERT INTO {$this->prefix}motoboy ";
        $query .= "(mot_custoporkm, mot_remetente, mot_cidade) ";
        $query .= "VALUES ";
        $query .= "(:mot_custoporkm, :mot_remetente, :mot_cidade)";
        
        $params = array(
        ':mot_remetente' => $this->remetente,
        ':mot_custoporkm' => $this->custoPorKM,
        ':mot_cidade' => $this->cidade
        );
        
        if($this->ExecuteSQL($query, $params)){
            return true;
        }else{
            return false;
        }
        
        
    }
    
    
    
    
    //FUNÇÃO PARA PEGAR O ENDEREÇO DO ULTIMO REMETENTE NO BANCO DE DADOS
    public function pegarRemetente(){
        $query = "SELECT MAX(mot_remetente) FROM {$this->prefix}motoboy";
        
        $params = array(":mot_remetente"=>$remetente);
        $this->ExecuteSQL($query, $params);
        return $this->TotalDados();

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
        
        
        return 
        
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
        $custoPorKM = str_replace('.', '', $custoPorKM);
        $custoPorKM = str_replace(',', '.', $custoPorKM);
        $this->custoPorKM = $custoPorKM;
    }
    
    public function setRemetente($remetente){
        $this->remetente = $remetente;
    }
    public function setCidade($cidade){
        $this->cidade = $cidade;
    }
    
    
    
    
    
    
    
}