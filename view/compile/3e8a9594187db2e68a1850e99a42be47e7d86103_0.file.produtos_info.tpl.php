<?php
/* Smarty version 3.1.34-dev-7, created on 2020-04-06 12:22:21
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\view\produtos_info.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e8b492db18e26_29486372',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3e8a9594187db2e68a1850e99a42be47e7d86103' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\view\\produtos_info.tpl',
      1 => 1586186536,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8b492db18e26_29486372 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>  

      <h3 id="nomeproduto" class="text-center"><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
</h3>
<hr>

<div class="row">


        <div class="col-md-6 thumbnail">

        <a class='example-image-link' style='max-width:900px' href="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img_g'];?>
" data-lightbox='example-1'><img  src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img_g'];?>
" alt="" width="100%" height="100%"></a>

    </div>


	    <div class="col-md-6 thumbnail">

        <br>
          <img width="80%" src="<?php echo $_smarty_tpl->tpl_vars['TEMA']->value;?>
/imagens/banner_cartao.jpg" alt="">
          <center><p>Com 3% de acréscimo no débito ou 5% de acréscimo no crédito</p></center>
        <hr>


        <div class="col-md-6">
            
           <h1 class="text-center preco">R$ <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</h1>

        </div>
        <div class="col-md-6">
            <form name="carrinho" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_COMPRAR']->value;?>
">
                <br>
                <?php $_smarty_tpl->_assignInScope('tamanhos', explode(",",$_smarty_tpl->tpl_vars['P']->value['pro_tamanho']));?>
            
                <center><h4>Selecione o tamanho</h4></center>
                <select name="pro_tamanho" class="form-control selectpicker" required>
                    
                    <option value="">selecione</option>
                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['tamanhos']->value, 't');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['t']->value) {
?>
                    <option value="<?php echo $_smarty_tpl->tpl_vars['t']->value;?>
"><?php echo $_smarty_tpl->tpl_vars['t']->value;?>
</option>
                    <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                </select>
                <br>

                <input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">



                <input type="hidden" name="acao" value="add">
                <center><button  class="btn btn-success btn-lg botaoroxo">Colocar no Carrinho</button></center>
                <br><br>
             </form>

        </div>








    </div>




</div>
        <!-- -->
                 <div class="row">
            <hr>
              <h4 class="text-center">Mais imagens</h4>

              <ul style="list-style: none">
                  <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['IMAGES']->value, 'I');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['I']->value) {
?>


                      <li class="col-md-3 ">
                          <a class='example-image-link' href="<?php echo $_smarty_tpl->tpl_vars['I']->value['img_nome'];?>
" data-lightbox='example-1'><img src="<?php echo $_smarty_tpl->tpl_vars['I']->value['img_nome'];?>
" alt="" class="thumbnail" style='max-width:200px'></a>


                      </li>

                  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
              </ul>


        </div>
            
        <div class="row">
            <hr>
            <h4 class="text-center">Descrição do produto</h4>

            <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_desc'];?>


        </div>
            <br>
            <br>


  <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);
}
}
