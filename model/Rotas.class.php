<?php

class Rotas{
    static function get_Pagina(){
        if(isset($_GET['pag'])){
            $pagina = $_GET['pag'].'.php';
            if(file_exists($pagina)){
                require_once $pagina;
            }else{

                require_once 'erro.php';

            }
        }
    }
}
