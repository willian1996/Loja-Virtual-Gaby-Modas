<?php

// autoload_static.php @generated by Composer

namespace Composer\Autoload;

class ComposerStaticInit7ce36c572953fb251aeed1fef5aba345
{
    public static $files = array (
        'f084d01b0a599f67676cffef638aa95b' => __DIR__ . '/..' . '/smarty/smarty/libs/bootstrap.php',
    );

    public static $prefixLengthsPsr4 = array (
        'P' => 
        array (
            'PHPMailer\\PHPMailer\\' => 20,
        ),
    );

    public static $prefixDirsPsr4 = array (
        'PHPMailer\\PHPMailer\\' => 
        array (
            0 => __DIR__ . '/..' . '/phpmailer/phpmailer/src',
        ),
    );

    public static $classMap = array (
        'Carrinho' => __DIR__ . '/../..' . '/model/Carrinho.class.php',
        'Categorias' => __DIR__ . '/../..' . '/model/Categorias.class.php',
        'Clientes' => __DIR__ . '/../..' . '/model/Clientes.class.php',
        'Conexao' => __DIR__ . '/../..' . '/model/Conexao.class.php',
        'Config' => __DIR__ . '/../..' . '/model/Config.class.php',
        'Correios' => __DIR__ . '/../..' . '/model/Correios.class.php',
        'EnviarEmail' => __DIR__ . '/../..' . '/model/EnviarEmail.class.php',
        'Itens' => __DIR__ . '/../..' . '/model/ItensPedido.class.php',
        'Login' => __DIR__ . '/../..' . '/model/Login.class.php',
        'PHPMailer\\PHPMailer\\PHPMailer' => __DIR__ . '/../..' . '/model/PHPMailer.php',
        'Paginacao' => __DIR__ . '/../..' . '/model/Paginacao.class.php',
        'Pedidos' => __DIR__ . '/../..' . '/model/Pedidos.class.php',
        'Produtos' => __DIR__ . '/../..' . '/model/Produtos.class.php',
        'ProdutosImages' => __DIR__ . '/../..' . '/model/ProdutosImages.class.php',
        'Rotas' => __DIR__ . '/../..' . '/model/Rotas.class.php',
        'Sistema' => __DIR__ . '/../..' . '/model/Sistema.class.php',
        'Template' => __DIR__ . '/../..' . '/model/Template.class.php',
    );

    public static function getInitializer(ClassLoader $loader)
    {
        return \Closure::bind(function () use ($loader) {
            $loader->prefixLengthsPsr4 = ComposerStaticInit7ce36c572953fb251aeed1fef5aba345::$prefixLengthsPsr4;
            $loader->prefixDirsPsr4 = ComposerStaticInit7ce36c572953fb251aeed1fef5aba345::$prefixDirsPsr4;
            $loader->classMap = ComposerStaticInit7ce36c572953fb251aeed1fef5aba345::$classMap;

        }, null, ClassLoader::class);
    }
}
