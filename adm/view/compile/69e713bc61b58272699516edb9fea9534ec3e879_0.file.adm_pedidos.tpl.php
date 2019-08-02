<?php
/* Smarty version 3.1.33, created on 2019-08-02 17:46:53
  from 'C:\xampp\htdocs\Loja-Virtual-Gaby-Modas\adm\view\adm_pedidos.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d44a13d87f5c3_83153901',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '69e713bc61b58272699516edb9fea9534ec3e879' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Loja-Virtual-Gaby-Modas\\adm\\view\\adm_pedidos.tpl',
      1 => 1564778776,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d44a13d87f5c3_83153901 (Smarty_Internal_Template $_smarty_tpl) {
?><h2 class="text-center"> Gerenciar Pedidos </h2>
<hr>

<section class="row" id="pesquisa">
    <div class="espacamento">
        <!---  faz  uma busca entre datas --->
        <label> Buscar entre datas</label>
        <form name="buscardata" method="post" action="">

            <div class="col-md-3">            
                <input type="date" name="data_ini" class="form-control" required>

            </div> 

            <div class="col-md-3"> 

                <input type="date" name="data_fim" class="form-control" required>

            </div> 


            <div class="col-md-3"> 

                <button class="btn btn-success"> Buscar </button>

            </div> 


            <div class="col-md-3">    

            </div> 


        </form>


    </div>
</section>

<br>

<section class="row">    
    <div class="espacamento">
        <!--- faz  uma busca  por texto ---> 
        <label> Buscar por Referencia</label>
        <form name="buscarrefcod" method="post" action="">  

            <div class="col-md-3">

                <input type="text" name="txt_ref" class="form-control" required>   
            </div>
            <div class="col-md-3">

                <button class="btn btn-success"> Buscar </button>   
            </div>
            <div class="col-md-3"></div>
            <div class="col-md-3"></div>

        </form>

    </div>
</section>

<hr>

<section class="row" id="pedidos">
    
      
    <center>
        <p>Clique na data para ver o pedido</p>
    <table class="table table-bordered " style="width: 90%">
        
        <tr class="text-success bg-success">
            <td>Cliente</td>
            <td>Data</td>
            <td class="hiddenonmobile">Ref</td>
           
            <td>Status</td>
            <td></td>
        </tr>
        
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['PEDIDOS']->value, 'P');
if ($_from !== null) {
foreach ($_from as $_smarty_tpl->tpl_vars['P']->value) {
?>
        <tr>
            <td><?php echo $_smarty_tpl->tpl_vars['P']->value['cli_nome'];?>
 <?php echo $_smarty_tpl->tpl_vars['P']->value['cli_sobrenome'];?>
</td>
            <td style="width: 10%">
                <form name="itens" method="post" action="<?php echo $_smarty_tpl->tpl_vars['PAG_ITENS']->value;?>
">
                     <input type="hidden" name="cod_pedido" id="cod_pedido" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['ped_cod'];?>
">
                     <button style="background-color: #FFF;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_data'];?>
 <?php echo $_smarty_tpl->tpl_vars['P']->value['ped_hora'];?>
</button>
                </form> 
            </td>
            <td class="hiddenonmobile" style="width: 10%"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_ref'];?>
</td>
            
            <?php if ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'CANCELADO') {?>
             <td style="width: 10%;"><span class="label label-danger"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
            <?php } elseif ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'ENTREGUE') {?>
              <td style="width: 10%;"><span class="label label-success"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
            <?php } elseif ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'SOLICITADO') {?>
              <td style="width: 10%;"><span class="label label-info"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
            <?php } elseif ($_smarty_tpl->tpl_vars['P']->value['ped_pag_status'] == 'SEPARADO') {?>
              <td style="width: 10%;"><span class="label label-warning"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</span></td>
            <?php } else { ?>
              <td style="width: 10%;"><?php echo $_smarty_tpl->tpl_vars['P']->value['ped_pag_status'];?>
</td>
            <?php }?>
            <td> 
               <form name="deletar" method="post" action="">
                         <input type="hidden" name="cod_pedido" id="cod_pedido" value="<?php echo $_smarty_tpl->tpl_vars['P']->value['ped_cod'];?>
">
                         <button class="btn btn-danger btn-sm" name="ped_apagar" value="ped_apagar"><i class="glyphicon glyphicon-remove"></i> </button>
               </form> 
            </td>
            
        </tr>
        <?php
}
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
        
    </table>
      </center>
    
    
</section>
  <!--  paginação inferior   -->
    <section id="pagincao" class="row">
    <center>
    <?php echo $_smarty_tpl->tpl_vars['PAGINAS']->value;?>

    </center>
    </section>
<?php }
}
