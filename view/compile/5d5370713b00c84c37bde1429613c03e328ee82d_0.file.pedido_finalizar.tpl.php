<?php
/* Smarty version 3.1.34-dev-7, created on 2020-04-05 20:23:13
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\view\pedido_finalizar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.34-dev-7',
  'unifunc' => 'content_5e8a686145c945_52249187',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5d5370713b00c84c37bde1429613c03e328ee82d' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\view\\pedido_finalizar.tpl',
      1 => 1586128946,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e8a686145c945_52249187 (Smarty_Internal_Template $_smarty_tpl) {
?><hr>
<!--  table listagem de itens -->
<section id="tabelafinalizar" class="row ">
    
    

    <center>
        <?php echo '<script'; ?>
>alert("Pedido Finalizado com Sucesso!");<?php echo '</script'; ?>
>
        <div class="alert alert-success">
        Pedido Finalizado com Sucesso!
        </div>
        <div class="alert alert-info">
        Será enviado em 7 dias! <br>Entraremos em contato pelo Whatsapp para confirmar este pedido.
        </div>
        <div class="alert alert-warning">
        Atenção pagamento será feito no momento da entrega apenas nas cidades de Caraguatatuba, São Sebastião e Ilhabela.
        </div>
        <div class="alert alert-danger">
        Caso seja de outra cidade enviaremos um link da PagSeguro para pagamento via whatsapp antes da postagem nos correios 
        </div>
        <br>
        <h4>Resumo do seu pedido</h4>
    <table class="table table-bordered" style="width: 95%">

 
        
        <tr class="text-danger bg-danger">
            <td></td>
            <td>Produto</td>
            <td>Valor R$</td>
            <td>T</td>
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
            <td><strong><?php echo $_smarty_tpl->tpl_vars['P']->value['pro_qtd'];?>
</strong> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_nome'];?>
 </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_valor'];?>
 </td>
            <td> <?php echo $_smarty_tpl->tpl_vars['P']->value['pro_tamanho'];?>
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
                   Frete : <?php echo $_smarty_tpl->tpl_vars['FRETE']->value;?>

                </h4>
                    <hr>
                <h4>
                   Total do Pedido : R$ <?php echo $_smarty_tpl->tpl_vars['TOTAL_FRETE']->value;?>

                </h4>
            </div>


        </section>

<section class="row">
     <br><hr>
    <center>
        <a  href="<?php echo $_smarty_tpl->tpl_vars['PAG_MINHA_CONTA']->value;?>
#tabelapedidos"><button class="btn btn-success btn-lg botaoroxo">Ver meus pedidos</button></a>
    </center>


</section>

                    <br>
                    <hr>

<section class="row">


           
            

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
                <center><p>Com 3% de acréscimo no débito ou 5% de acréscimo no crédito</p></center>
                <br>
            </div>

            <div class="col-md-4">

            </div>


</section>


       <br>
       <br>
       <br>
       <br>
<?php }
}
