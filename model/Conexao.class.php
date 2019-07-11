<?php

class Conexao{
    private $host;
    private $user;
    private $senha;
    private $banco;
    protected $obj, $itens = array(), $prefix;

    function __construct(){
        $this->host = BD_HOST;
        $this->user = BD_USER;
        $this->senha = BD_SENHA;
        $this->banco = BD_BANCO;
        $this->prefix = BD_PREFIX;

        try{
            if($this->Conectar() == null){
                $this->Conectar();
            }

        }catch(Exception $e){
            exit($e->getMessage().'<h2>Erro ao conectar com o banco de dados!</h2>');
        }

    }

    private function Conectar(){
        $options = array(
            PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8",
            PDO::ATTR_ERRMODE => PDO::ERRMODE_WARNING
        );
        $link = new PDO("mysql:host={$this->host};dbname={$this->banco}",
                        $this->user,
                        $this->senha,
                        $options);
        return $link;
    }

    public function ExcecuteSQL($query, array $params = null){
        $this->obj = $this->Conectar()->prepare($query);
        return $this->obj->execute();
    }

    public function ListarDados(){
        return $this->obj->fetch(PDO::FETCH_ASSOC);
    }

    public function TotalDados(){
        return $this->obj->rowCount();
    }


    public function GetItens(){
        return $this->itens;
    }
















}