<?php

class Produtos extends Conexao{
    
    public function __construct(){
        parent:: __construct();
    }
    
    public function GetProdutos(){
        //query para buscar pordutos de uma categoria especifica 
        $query = "SELECT * FROM {$this->prefix}produtos p 
        INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";
        
        //$query .= "ORDER BY produto_id DESC";
        
        $this->ExcecuteSQL($query);
        
        $this->GetLista();
        
    }
    
    private function GetLista(){
        $i = 1;
        while($lista = $this->ListarDados()):
        $this->itens[$i] = array(
            'pro_id' => $lista['pro_id'],
            'pro_nome' => $lista['pro_nome'],
            'pro_desc' => $lista['pro_desc'],
            'pro_peso' => $lista['pro_peso'],
            'pro_valor' => $lista['pro_valor'],
            'pro_altura' => $lista['pro_altura'],
            'pro_largura' => $lista['pro_largura'],
            'pro_comprimento' => $lista['pro_comprimento'],
            'pro_img' => $lista['pro_img'],
            'pro_slug' => $lista['pro_slug'],
            'cate_nome' => $lista['cate_nome'],
            'cate_id' => $lista['cate_id']
        );
        
        $i++;
        endwhile;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}/*FIM CLASSE PRODUTOS*/