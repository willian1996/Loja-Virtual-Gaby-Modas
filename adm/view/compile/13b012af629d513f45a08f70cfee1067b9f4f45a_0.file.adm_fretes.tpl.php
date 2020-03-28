<?php
/* Smarty version 3.1.33, created on 2020-03-27 21:17:16
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\adm\view\adm_fretes.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e7e978cec2523_35975040',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '13b012af629d513f45a08f70cfee1067b9f4f45a' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\adm\\view\\adm_fretes.tpl',
      1 => 1585354634,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e7e978cec2523_35975040 (Smarty_Internal_Template $_smarty_tpl) {
?><h2 class="text-center">Frete Motoboy</h2>
<hr>

<section class="row">
    <form>

        
        <div class="checkbox">
        <label>Cidades entregas via motoboy</label><br>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Caraguatatuba">Caraguatatuba</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Sao Sebastiao">Sao Sebastiao</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Ilhabela">Ilhabela</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Ubatuba">Ubatuba</label>
        </div>
        
        
        <div class="col-md-2">
            <label>Custo por km</label>
            <input type="text" name="pro_valor" id="pro_valor" class="form-control" required >

        </div>
        
        
        
        <div class="col-md-6">
            <label>Endereço remetente</label>
            <input type="text" name="pro_nome" id="pro_nome" class="form-control"  required >

        </div>
        <br><br>
        
        
        



    </form>





</section><?php }
}
