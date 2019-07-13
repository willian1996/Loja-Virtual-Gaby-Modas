<?php

class Paginacao extends Conexao{

    public $limite;
    public $inicio;
    public $link = array();

    public function GetPaginacao($campo, $tabela){

        $query = "SELECT {$campo} FROM {$tabela}";
        $this->ExecuteSQL($query);
        $total = $this->TotalDados();

        $this->limite = Config::DB_LIMIT_POR_PG;
        $paginas = ceil($total / $this->limite);
        $this->totalpags = $paginas;

        $p = (int)isset($_GET['p']) ? $_GET['p'] : 1;

        //TESTAR NA PRATICA
        $this->inicio = ($p * $this->limite) - $this->limite;

        for($i = 1; $i <= $paginas; $i++):
            array_push($this->link, $i);


        endfor;

    }














}
