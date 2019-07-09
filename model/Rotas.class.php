<?php

class Rotas{
    public static $pag;


    static function get_SiteHOME(){
        return Config::SITE_URL . '/' . Config::SITE_PASTA;
    }

    static function get_Pagina(){
        if(isset($_GET['pag'])){

            $pagina = $_GET['pag'];

            self::$pag = explode('/', $pagina);
//            var_dump(self::$pag);


            $pagina = 'controller/'.self::$pag[0].'.php';

            //$pagina = 'controller/'.$_GET['pag'].'.php';
            if(file_exists($pagina)){
                require_once $pagina;
            }else{

                require_once 'erro.php';

            }
        }
    }
}
