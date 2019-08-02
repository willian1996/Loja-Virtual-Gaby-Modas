<?php
/* Smarty version 3.1.33, created on 2019-08-02 17:38:38
  from 'C:\xampp\htdocs\Loja-Virtual-Gaby-Modas\view\pedido_finalizar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d449f4e827401_27680965',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7607833ac1fd2d06e33e8ed4b91d3d5328c442e8' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Loja-Virtual-Gaby-Modas\\view\\pedido_finalizar.tpl',
      1 => 1564778149,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d449f4e827401_27680965 (Smarty_Internal_Template $_smarty_tpl) {
?><h2 id="tabelafinalizar">Finalizando Pedido...</h2>
<hr>


<!--  table listagem de itens -->
<section class="row ">
    
    

    <center>
        <?php echo '<script'; ?>
>alert("Pedido Finalizado com Sucesso! avisaremos pelo Whatsapp no momento da saperação e da entrega");<?php echo '</script'; ?>
>
        <div class="alert alert-success">
        Pedido Finalizado com Sucesso!
        </div>
        <div class="alert alert-info">
        Será separado na proxima segunda-feira e será entregue na quarta-feira da proxima semana!
        </div>
        <div class="alert alert-warning">
        Atenção pagamento será feito no momento da entrega, aceitamos cartões com 5% de acréscimo!
        </div>
        <br><br>
        <h4>Resumo do seu pedido</h4>
    <table class="table table-bordered" style="width: 95%">


        
        <tr class="text-danger bg-danger">
            <td></td>
            <td>Produto</td>
            <td>Valor R$</td>
            <td>X</td>
            <td>Sub Total R$</td>
        </tr>


       <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PRO']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>

        <tr>

            <td> <img src="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['P']->value['pro_img'];?>
"> </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
 </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
 </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_qtd'];?>
 </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_subTotal'];?>
</td>
<!--
            <td>

            </td>
-->


        </tr>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>


    </table>

    </center>


</section><!-- fim da listagem itens -->

        <!-- botoes de baixo e valor total -->
        <section class="row" id="total">

            <div class="col-md-4 text-right">

            </div>

            <div class="col-md-12 text-right text-danger bg-warning">
            <h4>
               Total : R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL']->value;?>

            </h4>
                <h4>
               Frete : R$ <?php echo $_smarty_tpl->tpl_vars['FRETE']->value;?>

            </h4>
                <hr>
            <h4>
               Total do Pedido : R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL_FRETE']->value;?>

            </h4>
            </div>


        </section>

<section class="row">
            <br><hr>
            <h4 class="text-center"><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHA_CONTA']->value;?>
#tabelapedidos">Ver meus pedidos</a></h4>
            

            <!-- botao de pagamento  -->
            <div class="col-md-4">




                


<!--                   <?php echo '<script'; ?>
 type="text/javascript" src="<?php echo $_smarty_tpl->tpl_vars['PS_SCRIPT']->value;?>
"><?php echo '</script'; ?>
>-->

            </div>
            <div class="col-md-4">
                <br>
                <img width="100%" src="<?php echo $_smarty_tpl->tpl_vars['TEMA']->value;?>
/imagens/banner_cartao.jpg" alt="">
                <br>
            </div>

            <div class="col-md-4">

            </div>


</section>

                    <br>
                    <hr>

       <br>
       <br>
       <br>
       <br>
<?php }
}
