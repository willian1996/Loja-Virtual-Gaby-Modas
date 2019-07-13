<?php
define("ENVIRONMENT", "development"); //versão para maquina local
#define("ENVIRONMENT", "production"); //versão para hospedar


if(ENVIRONMENT == 'development'){
    define('BD_HOST', "localhost");
    define('BD_USER', "root");
    define('BD_SENHA', "");
    define('BD_BANCO', "loja_gabymodas");
    define('BD_PREFIX', "gm_");
}else{
    define('BD_HOST', "localhost");
    define('BD_USER', "u349811508_root");
    define('BD_SENHA', "yi`4sy]4UKCQwzX]VJ");
    define('BD_BANCO', "u349811508_ljgab");
    define('BD_PREFIX', "gm_");
}


class Config{

    //INFORMAÇÕES BÁSICAS DO SITE
    const SITE_URL = "http://localhost";
    const SITE_PASTA = "Loja-Virtual";
    const SITE_NOME = "GABY MODAS";
    const SITE_EMAIL_ADMIN = "contato@gabymodas.com";
    const SITE_EMAIL_SENHA = "Gabymodas$123#";
    const DB_LIMIT_POR_PG = 3;


    //INFORMAÇÕES PARA PHP MAILLER
    const EMAIL_HOST = "smtp.gmail.com";
    const EMAIL_USER = "lojavirtualgabymodas@gmail.com.br";
    const EMAIL_NOME = "Contato Loja Gaby Modas";
    const EMAIL_SENHA = "Gabymodas$123#";
    const EMAIL_PORTA = 587;
    const EMAIL_SMTPAUTH = true;
    const EMAIL_SMTPSECURE = "tls";
    const EMAIL_COPIA = "lojavirtualgabymodas@gmail.com.br";





}
