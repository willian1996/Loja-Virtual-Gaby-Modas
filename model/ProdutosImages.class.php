<?php

class ProdutosImages extends Conexao{

    function GetIMagesPRO($pro){
        $query = "SELECT * FROM {$this->prefix}imagens WHERE img_pro_id = :pro";

        $params = array(':pro'=>(int)$pro);
        $this->ExecuteSQL($query, $params);
        $this->GetLista();

    }

    private function GetLista(){
        $i = 1;
        while($lista = $this->ListarDados()):
        $this->itens[$i] = array(
            'img_id' => $lista['img_id'],
            'img_nome' => Rotas::ImageLinkForInfo($lista['img_nome']),
            'img_pro_id' => $lista['img_pro_id'],
            'img_link' => Rotas::ImageLink($lista['img_nome'], 400,500),
            'img_arquivo' => $lista['img_nome'],

        );

        $i++;
        endwhile;
    }

    public function Insert($img,$pro_id){

        $query = "INSERT INTO {$this->prefix}imagens (img_nome,img_pro_id)";
        $query.= " VALUES (:img_nome,:img_pro_id) ";

        $params = array(':img_nome'=>$img,
                        ':img_pro_id'=> (int)$pro_id
                       );

        $this->ExecuteSQL($query, $params);


    }

    public function Deletar($img_nome){

        $query = " DELETE FROM {$this->prefix}imagens ";
        $query .= " WHERE img_nome = :img_nome ";

        $params = array(':img_nome'=>$img_nome);

        $this->ExecuteSQL($query, $params);

    }








}
