<?php
/* Smarty version 3.1.33, created on 2019-08-05 06:14:31
  from 'C:\xampp\htdocs\Loja-Virtual-Gaby-Modas\adm\view\adm_clientes.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d47f37795a802_37519839',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '443e488e8e1a30c8517bafdfb5289131ece01e5e' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Loja-Virtual-Gaby-Modas\\adm\\view\\adm_clientes.tpl',
      1 => 1564996468,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d47f37795a802_37519839 (Smarty_Internal_Template $_smarty_tpl) {
?><h2 class="text-center">Gerenciar Clientes </h2>
<hr>

<!--- listando clientes ---->
<section class="row">
    
    <center>
        <p>Clique no nome para ver os dados do cliente</p>
    <table class="table table-bordered">
    
        
        <tr class="text-success bg-success">
            
            <td>Nome</td>
            <td>Whatsapp </td>
            <td class="hiddenonmobile">Data cadastro</td>
            <td></td>
        </tr>
        
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['CLIENTES']->value, 'C');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['C']->value) {
?>
        
        <tr>
            <td><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_EDITAR']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['C']->value['cli_id'];?>
"><?php echo $_smarty_tpl->tpl_vars['C']->value['cli_nome'];?>
 <?php echo $_smarty_tpl->tpl_vars['C']->value['cli_sobrenome'];?>
</a></td>
            <td><a href="https://wa.me/55<?php echo $_smarty_tpl->tpl_vars['C']->value['cli_celular'];?>
"><?php echo $_smarty_tpl->tpl_vars['C']->value['cli_celular'];?>
</a></td>
            <td class="hiddenonmobile"><?php echo $_smarty_tpl->tpl_vars['C']->value['cli_data_cad'];?>
</td>
            <td><a href="<?php echo $_smarty_tpl->tpl_vars['PAG_PEDIDOS']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['C']->value['cli_id'];?>
 ">Pedidos</a> </td>
        </tr>
        
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        
    </table>
    </center >
    
</section>

<?php }
}
