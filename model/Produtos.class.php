<?php
class Produtos extends Conexao{
    
    public function __construct(){
        parent:: __construct();
    }
    
    public function GetProdutos(){
        //query para buscar pordutos de uma categoria especifica 
        $query = "SELECT * FROM {$this->prefix}produtos p 
        INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";
        
        $query .= " ORDER BY pro_id DESC";
        
        $query .= $this->PaginacaoLinks("pro_id", $this->prefix."produtos");



        $this->ExecuteSQL($query);
        
        $this->GetLista();
        
    }
    

    public function GetProdutosID($id){
        //query para buscar pordutos de uma categoria especifica
        $query = "SELECT * FROM {$this->prefix}produtos p
        INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";

        $query .= " AND pro_id = :id";

        $params = array(':id' => (int)$id);

        $this->ExecuteSQL($query, $params);

        $this->GetLista();

    }

    public function GetProdutosCateID($id){
        //query para buscar pordutos de uma categoria especifica
        $query = "SELECT * FROM {$this->prefix}produtos p
        INNER JOIN {$this->prefix}categorias c ON p.pro_categoria = c.cate_id";

        $query .= " AND pro_categoria = :id";

        $params = array(':id' => (int)$id);

        $this->ExecuteSQL($query, $params);

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
            'pro_valor' => Sistema::MoedaBR($lista['pro_valor']),
            'pro_altura' => $lista['pro_altura'],
            'pro_largura' => $lista['pro_largura'],
            'pro_comprimento' => $lista['pro_comprimento'],
            'pro_img' => Rotas::ImageLink($lista['pro_img'], 180,250),
            'pro_img_g' => Rotas::ImageLink($lista['pro_img'], 250,300),
            'pro_img_p' => Rotas::ImageLink($lista['pro_img'], 70,70),
            'pro_slug' => $lista['pro_slug'],
            'pro_ref' => $lista['pro_ref'],
            'cate_nome' => $lista['cate_nome'],
            'cate_id' => $lista['cate_id']
        );
        
        $i++;
        endwhile;
    }
    
    

    
    

    
    
    
    
    
    
    
    
}/*FIM CLASSE PRODUTOS*/
