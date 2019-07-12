<?php

class Categorias extends Conexao{
    private $cate_id;
    private $cate_nome;
    private $cate_slug;

    public function __construct(){
        parent:: __construct();
    }

    public function GetCategorias(){
        //query para buscar pordutos de uma categoria especifica
        $query = "SELECT * FROM {$this->prefix}categorias";

        $this->ExcecuteSQL($query);

        $this->GetLista();

    }

    private function GetLista(){
        $i = 1;
        while($lista = $this->ListarDados()):
        $this->itens[$i] = array(
            'cate_id' => $lista['cate_id'],
            'cate_nome' => $lista['cate_nome'],
            'cate_slug' => $lista['cate_slug'],
            'cate_link' => Rotas::pag_Produtos(). '/' . $lista['cate_id'] .  '/' . $lista['cate_slug'],
        );



        $i++;
        endwhile;
    }





}
