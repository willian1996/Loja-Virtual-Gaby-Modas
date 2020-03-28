<?php

class Motoboy extends Conexao{
    private $custoPorKM;
    private $remetente;
    private $cidade;
    
    public function __construct(){
        parent::__construct();
    }
    
    public function Preparar($custoPorKM, $remetente, $cidade){
        $this->setCustoPorKM($custoPorKM);
        $this->setRemetente($remetente);
        $this->setCidade($cidade);
    }
    
    //fução para salvar no banco de dados 
    
    
    
    
    
    
    
    //Função para puxar API do google
    
    
    
    
    
    
    
    
    
    
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