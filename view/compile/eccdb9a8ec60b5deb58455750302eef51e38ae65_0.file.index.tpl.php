<?php
/* Smarty version 3.1.33, created on 2019-07-09 19:38:54
  from 'C:\wamp64\www\Loja-Virtual\view\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d24ed4e503b72_37661217',
  'has_nocache_code' => false,
  'file_dependency' =>
  array (
    'eccdb9a8ec60b5deb58455750302eef51e38ae65' =>
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual\\view\\index.tpl',
      1 => 1562701131,
      2 => 'file',
    ),
  ),
  'includes' =>
  array (
  ),
),false)) {
function content_5d24ed4e503b72_37661217 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html>

<html>
    <head>
        <title><?php echo $_smarty_tpl->tpl_vars['TITULO_SITE']->value;?>
</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <link href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/js/jquery-2.2.1.min.js" type="text/javascript"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/js/bootstrap.min.js" type="text/javascript"><?php echo '</script'; ?>
>

        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/contatos/contatos.js" type="text/javascript"><?php echo '</script'; ?>
>
        <!-- meu aquivo pessoal de CSS-->
        <link href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/css/tema.css" rel="stylesheet" type="text/css"/>

        <link href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/contatos/contatos.css" rel="stylesheet" type="text/css"/>
     <!-- HTML5 shim e Respond.js para suporte no IE8 de elementos HTML5 e media queries -->
    <!-- ALERTA: Respond.js não funciona se você visualizar uma página file:// -->
    <!--[if lt IE 9]>
      <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"><?php echo '</script'; ?>
>
      <?php echo '<script'; ?>
 src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"><?php echo '</script'; ?>
>
    <![endif]-->

    </head>
    <body>

        <!-- começa  o container geral -->
        <div class="container-fluid">

            <!-- começa a div topo -->
            <div class="row" id="topo">


                <div class="container">
                <img src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/imagens/logo-gaby.jpg" alt="">

                </div>

            </div><!-- fim da div topo -->

            <!-- começa a barra MENU-->
            <div class="row" id="barra-menu">

                <!--começa navBAR-->
                <nav class="navbar navbar-inverse">

                    <!-- container navBAr-->
                    <div class="container">
                        <!-- header da navbar-->
                        <div class="navbar-header">
                           <!-- botao que mostra e esconde a navbar-->
                           <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                               <span class="sr-only">Toggle navigation</span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                               <span class="icon-bar"></span>
                           </button>

                        </div><!--fim header navbar-->

                        <div class="collapse navbar-collapse" id="navbar">
                            <ul class="nav navbar-nav">
                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['GET_HOME']->value;?>
"><i class="glyphicon glyphicon-home"></i> Home </a> </li>

                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHACONTA']->value;?>
"><i class="glyphicon glyphicon-user"></i> Minha Conta </a> </li>
                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO']->value;?>
"><i class="glyphicon glyphicon-shopping-cart"></i> Carrinho </a> </li>
                                <li><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CONTATO']->value;?>
" ><i class="glyphicon glyphicon-envelope"></i> Contato </a> </li>




                            </ul>


                            <form class="navbar-form navbar-right" role="search">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Digite para buscar" required>
                                </div>
                                <button type="submit" class="btn btn-primary">Buscar</button>
                            </form>

                         </div><!-- fim navbar collapse-->


                    </div> <!--fim container navBar-->

                </nav><!-- fim da navBar-->





            </div> <!-- fim barra menu-->

            <!-- começa DIV conteudo-->
            <div class="row" id="conteudo">

            <div class="container">

                <!-- coluna da esquerda -->
                <div class="col-md-2" id="lateral">

                <div class="list-group">
                    <span class="list-group-item active"> Categorias</span>

                    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> Presentes</a>
                    <a href="#" class="list-group-item"><i class="glyphicon glyphicon-menu-right"></i> Brinquedos</a>

                    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> Presentes</a>
                    <a href="#" class="list-group-item"><i class="glyphicon glyphicon-menu-right"></i> Brinquedos</a>

                    <a href="#" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span> Presentes</a>
                    <a href="#" class="list-group-item"><i class="glyphicon glyphicon-menu-right"></i> Brinquedos</a>


                </div><!--fim da list group-->

                </div> <!-- finm coluna esquerda -->

                <!-- coluna direita CONYEUDO CENTRAL -->
                <div class="col-md-10">


                    <ul class="breadcrumb">
                        <li><a href="#"><i class="glyphicon glyphicon-home"></i> Home </a></li>
                        <li><a href="#"> Produtos </a></li>
                        <li><a href="#"> Info </a></li>
                    </ul>
                    <!-- fim do menu breadcrumb-->
                    <?php
                    Rotas::get_Pagina();
                    //var_dump(Rotas::$pag);

                    ?>


                </div>  <!--fim coluna direita-->

            </div>






            </div><!-- fim DIV conteudo-->

            <!-- começa div rodape -->
            <div class="row" id="rodape">
                <center><h4><?php echo $_smarty_tpl->tpl_vars['TITULO_SITE']->value;?>
</h4><P>Copyright © 2019 - developed by <a href="https://www.instagram.com/williansales.webdev/">Willian</a></P></center>


            </div><!-- fim div rodape-->



           </div> <!-- fim do container geral -->




    </body>
</html>
<?php }
}
