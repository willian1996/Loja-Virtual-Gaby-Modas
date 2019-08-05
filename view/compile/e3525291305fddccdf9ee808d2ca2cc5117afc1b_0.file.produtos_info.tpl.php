<?php
/* Smarty version 3.1.33, created on 2019-08-05 02:05:32
  from 'C:\xampp\htdocs\Loja-Virtual-Gaby-Modas\view\produtos_info.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d47b91cd13b93_61606597',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e3525291305fddccdf9ee808d2ca2cc5117afc1b' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Loja-Virtual-Gaby-Modas\\view\\produtos_info.tpl',
      1 => 1564981520,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d47b91cd13b93_61606597 (Smarty_Internal_Template $_smarty_tpl) {
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>

      <h3 id="nomeproduto" class="text-center"><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
 - Ref: <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_ref'];?>
</h3>
<hr>

<div class="row">


        <div class="col-md-6">

        <img class="thumbnail" src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img_g'];?>
" alt="" width="100%">

    </div>


	    <div class="col-md-6 thumbnail">

        <br>
          <img width="80%" src="<?php echo $_smarty_tpl->tpl_vars['TEMA']->value;?>
/imagens/banner_cartao.jpg" alt="">
          <center><p>Com 3% de acréscimo no débito ou 5% de acréscimo no crédito</p></center>
        <hr>


        <div class="col-md-6">
            <br>
           <h3 class="text-center preco">R$ <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
</h3>

        </div>
        <div class="col-md-6">
            <form name="carrinho" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_COMPRAR']->value;?>
">
                <br>
                <center><h4>Selecione o tamanho</h4></center>
                <select name="pro_tamanho" class="form-control selectpicker" required>
                    <option value="">selecione</option>
                    <option value="P">P</option>
                    <option value="M">M</option>
                    <option value="G">G</option>
                    <option value="GG">GG</option>

                </select>
                <br>

                <input type="hidden" name="pro_id" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_id'];?>
">

<!--                adicionar um select option para P M G GG -->


                <input type="hidden" name="acao" value="add">
                <center><button  class="btn btn-success btn-lg">Colocar no Carrinho</button></center>
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
                          <img src="<?php echo $_smarty_tpl->tpl_vars['I']->value['img_nome'];?>
" alt="" class="thumbnail">


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
