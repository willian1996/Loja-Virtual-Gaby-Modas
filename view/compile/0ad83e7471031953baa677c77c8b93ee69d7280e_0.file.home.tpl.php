<?php
/* Smarty version 3.1.34-dev-7, created on 2020-04-06 00:16:39
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\view\home.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e8a9f17073d87_18213451',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0ad83e7471031953baa677c77c8b93ee69d7280e' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\view\\home.tpl',
      1 => 1586142996,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8a9f17073d87_18213451 (Smarty_Internal_Template $_smarty_tpl) {
?>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
<!--      <li data-target="#myCarousel" data-slide-to="0" ></li>-->
      <li data-target="#myCarousel" data-slide-to="1" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
<!--
      <div class="item ">
        <img src="<?php echo $_smarty_tpl->tpl_vars['IMG1']->value;?>
" alt="Los Angeles" class="img img-responsive"  style="width:100%;">
      </div>
-->

      <div class="item active">
        <img src="<?php echo $_smarty_tpl->tpl_vars['IMG2']->value;?>
" alt="Chicago" class="img img-responsive" style="width:100%;">
      </div>

      <div class="item">
        <img src="<?php echo $_smarty_tpl->tpl_vars['IMG3']->value;?>
" alt="New york" class="img img-responsive" style="width:100%;">
      </div>

     <div class="item">
        <img src="<?php echo $_smarty_tpl->tpl_vars['IMG4']->value;?>
" alt="New york" class="img img-responsive" style="width:100%;">
      </div>
     <div class="item">
        <img src="<?php echo $_smarty_tpl->tpl_vars['IMG5']->value;?>
" alt="New york" class="img img-responsive" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>

<?php }
}
