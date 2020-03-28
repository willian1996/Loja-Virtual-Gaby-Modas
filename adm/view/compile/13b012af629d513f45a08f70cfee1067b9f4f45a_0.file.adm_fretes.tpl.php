<?php
/* Smarty version 3.1.33, created on 2020-03-28 03:54:46
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\adm\view\adm_fretes.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e7ef4b68bb748_87984496',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '13b012af629d513f45a08f70cfee1067b9f4f45a' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\adm\\view\\adm_fretes.tpl',
      1 => 1585378484,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e7ef4b68bb748_87984496 (Smarty_Internal_Template $_smarty_tpl) {
?><h2 class="text-center">Frete Motoboy</h2>
<hr>

<section class="row">
    <form method="post" action=""> 

        
        <div class="checkbox">
        <label>Cidades entregas via motoboy</label><br>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Caraguatatuba">Caraguatatuba</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Sao Sebastiao">Sao Sebastiao</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Ilhabela">Ilhabela</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Ubatuba">Ubatuba</label>
        </div>
        
        
        <div class="col-md-2">
            <label>Custo por km</label>
            <input type="text" name="custoPorKM" id="custoPorKM" class="form-control" required >

        </div>
        
        
        
        <div class="col-md-6">
            <label>Endereço remetente</label>
            <input type="text" name="remetente" id="remetente" class="form-control"  required >

        </div>
        
        
        
        
<!-- botão gravar -->



            <div class="col-md-4">

            </div>

            <div class="col-md-4">
                <br>
                <button class="btn btn-success btn-block btn-md" name="btn_gravar">Cadastrar Produto</button>
            </div>

            <div class="col-md-4">

            </div>


    </form>



<br><br>

</section><?php }
}
