<?php

class Rotas{
    public static $pag;
    private static $pasta_controller = 'controller';
    private static $pasta_view = 'view';


    static function get_SiteHOME(){
        return Config::SITE_URL . '/' . Config::SITE_PASTA;
    }

    static function get_SiteRAIZ(){
        return $_SERVER['DOCUMENT_ROOT'] . '/' . Config::SITE_PASTA;
    }

    static function get_SiteTEMA(){
        return self::get_SiteHOME() . '/' . self::$pasta_view;
    }

    static function pag_Carrinho(){
        return self::get_SiteHOME() . '/carrinho';
    }

    static function pag_CarrinhoAlterar(){
        return self::get_SiteHOME() . '/carrinho_alterar';
    }

    static function pag_Produtos(){
        return self::get_SiteHOME() . '/produtos';
    }

    static function pag_ProdutosInfo(){
        return self::get_SiteHOME() . '/produtos_info';
    }

    static function pag_Contato(){
        return self::get_SiteHOME() . '/contato';
    }

    static function pag_MinhaConta(){
        return self::get_SiteHOME() . '/minhaconta';
    }

    static function get_Pagina(){
        if(isset($_GET['pag'])){

            $pagina = $_GET['pag'];

            self::$pag = explode('/', $pagina);
//            var_dump(self::$pag);


            $pagina = 'controller/'.self::$pag[0].'.php';

            //$pagina = 'controller/'.$_GET['pag'].'.php';
            if(file_exists($pagina)){
                include $pagina;
            }else{

                require 'erro.php';

            }
        }else{
            require 'home.php';
        }
    }

    static function get_ImagePasta(){
        return 'media/images/';
    }

    static function get_ImageURL(){
        return self::get_SiteHOME(). '/'. self::get_ImagePasta() ;

    }

    static function ImageLink($img, $largura, $altura){
        $imagem  = self::get_ImageURL()."thumb.php?src={$img}&w={$largura}&h={$altura}&zc=1";

        return $imagem;

    }

    static function get_Pasta_Controller(){
        return self::$pasta_controller;
    }

    //METODO PARA REDIRECIONAR

    static function Redirecionar($tempo, $pagina){
        $url = '<meta http-equiv="refresh" content="'.$tempo.';url='.$pagina.'">';
        echo $url;
    }













}/*FIM CLASS Rotas*/
