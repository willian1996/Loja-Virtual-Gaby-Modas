<?php
/* Smarty version 3.1.34-dev-7, created on 2020-04-05 19:40:32
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\view\index.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e8a5e6033d183_56248746',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '99102affd5ec37fd147ed70c49139a68667280ad' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\view\\index.tpl',
      1 => 1586126430,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8a5e6033d183_56248746 (Smarty_Internal_Template $_smarty_tpl) {
?><!DOCTYPE html> 

<html>
    <head>
        <title><?php echo $_smarty_tpl->tpl_vars['TITULO_SITE']->value;?>
</title>
        <meta charset="UTF-8">
        <meta name="keywords" content="Lorraine Modas, Lorrainemodas, Lorraine, Modas, Feminina">
        <meta name="description" content="Loja de Roupas Feminina">
        <meta name="author" content="Willian Sales">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        

        <link href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <link rel="stylesheet" href="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/css/lightbox.css">

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

<!--         começa  o container geral <i class="glyphicon glyphicon-user"></i>-->
        <div class="container-fluid">

            <a id="minhacontaflutua" href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHACONTA']->value;?>
#minhaconta"><img src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/imagens/whatsapp-logo-4-1.png" alt=""></a>

            <!-- começa a div topo -->
            <div class="row" id="topo">


                <div class="container">
                    <div id="logotipo" class="col-md-6" >
                        <a href="<?php echo $_smarty_tpl->tpl_vars['GET_SITE_HOME']->value;?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/imagens/larraine2.jpeg" alt=""></a>
                    </div>

                </div>
                

            </div><!-- fim da div topo -->

           <!-- começa a barra MENU-->
            <div class="row" id="barra-menu">

                <!--começa navBAR-->
                <nav class="navbar navbar-inverse">

                    <!-- container navBAr-->
                    <div class="container">
                        <ul id="navhorizontal" class="nav navbar-nav hiddenonmobile">
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['GET_SITE_HOME']->value;?>
"><i class="glyphicon glyphicon-home"></i> Home </a> </li>
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_PRODUTOS']->value;?>
#produtos"><i class="glyphicon glyphicon-tag"></i> Produtos </a> </li>
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHACONTA']->value;?>
#minhaconta"><i class="glyphicon glyphicon-user"></i> Minha Conta </a> </li>
                            <li><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO']->value;?>
#tabelacarrinho"><i class="glyphicon glyphicon-shopping-cart"></i> Carrinho </a> </li>
                            <li><a href="https://api.whatsapp.com/send?phone=5512981819956" ><i class="glyphicon glyphicon-envelope"></i> Contato </a> </li>
                        </ul>
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
                            
                <div class="list-group hiddenonexpand">
                    <span class="list-group-item active"> Categorias</span>

                    <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_PRODUTOS']->value;?>
#produtos" class="list-group-item itenscategoria"><span class="glyphicon glyphicon-menu-right"></span>Todos</a>

                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['CATEGORIAS']->value, 'C');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['C']->value) {
?>
                    <a  href="<?php echo $_smarty_tpl->tpl_vars['C']->value['cate_link'];?>
#produtos" class="list-group-item itenscategoria"><span class="glyphicon glyphicon-menu-right"></span><?php echo $_smarty_tpl->tpl_vars['C']->value['cate_nome'];?>
</a>

                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                </div>
                    <!--fim da list group-->
                    


                    <form name="txt_buscar" method="post" action="" class="navbar-form navbar-right" role="search">
                        <div class="form-group">
                            <input name="txt_buscar" type="text" class="form-control" placeholder="Digite para buscar" required>
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

                    
<!-- MENU CATEGORIAS LATERAL PC-->
                <div class="list-group hiddenonmobile">
                    <span class="list-group-item active"> Categorias</span>

                    <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_PRODUTOS']->value;?>
#produtos" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span>Todos</a>

                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['CATEGORIAS']->value, 'C');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['C']->value) {
?>
                    <a  href="<?php echo $_smarty_tpl->tpl_vars['C']->value['cate_link'];?>
#produtos" class="list-group-item"><span class="glyphicon glyphicon-menu-right"></span><?php echo $_smarty_tpl->tpl_vars['C']->value['cate_nome'];?>
</a>

                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                </div><!--fim da list group-->
<!-- MENU CATEGORIAS LATERAL PC-->
                <div class="list-group hiddenonexpand">
                    <span class="list-group-item active"> OPÇÕES</span>

                    
                        <a href="<?php echo $_smarty_tpl->tpl_vars['GET_SITE_HOME']->value;?>
" class="list-group-item "><i class="glyphicon glyphicon-home"></i> Home </a>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_PRODUTOS']->value;?>
#produtos" class="list-group-item"><i class="glyphicon glyphicon-tag"></i> Produtos </a> 
                        <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHACONTA']->value;?>
#minhaconta" class="list-group-item"><i class="glyphicon glyphicon-user"></i> Minha Conta </a> 
                        <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CARRINHO']->value;?>
#tabelacarrinho" class="list-group-item"><i class="glyphicon glyphicon-shopping-cart"></i> Meu Carrinho </a> 
                        
                    

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
                <footer>
                    <ul>
                        <li><a href="https://www.facebook.com/gabytavares.com.br/">
                        <img src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/imagens/facebook.png" width="50" height="50"></a></li>
                        <li><a href="https://www.instagram.com/gaby.sallys.9"><img src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/imagens/instagram.png" width="50" height="50"></a></li>

                        <li><a href="https://api.whatsapp.com/send?phone=5512981819956"><img src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/imagens/whatsapp.png" width="50" height="50"></a></li>
                    </ul>
                    <h6>Copyright &copy; 2019 - desenvolvido por <a href="https://www.linkedin.com/in/williansalesgabriel">Willian</a></h6>
                </footer>


            </div><!-- fim div rodape-->



           </div> <!-- fim do container geral -->



<!--        Arquivos JavaScript    -->
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
/tema/js/script-cep.js" type="text/javascript"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/js/lightbox-plus-jquery.min.js" type="text/javascript"><?php echo '</script'; ?>
>
<!--        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/contatos/contatos.js" type="text/javascript"><?php echo '</script'; ?>
>-->
        <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['GET_TEMA']->value;?>
/tema/js/script.js" type="text/javascript"><?php echo '</script'; ?>
>
        <?php echo '<script'; ?>
 src="//cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.5/js/bootstrapvalidator.min.js"><?php echo '</script'; ?>
>
    </body>
</html>
<?php }
}
