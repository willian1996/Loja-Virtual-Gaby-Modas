<?php
/* Smarty version 3.1.33, created on 2019-08-01 18:56:24
  from 'C:\xampp\htdocs\Loja-Virtual-Gaby-Modas\view\login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d436008e47f01_00665507',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '70fea44267113317bde5751e3285ddbbf9716f88' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Loja-Virtual-Gaby-Modas\\view\\login.tpl',
      1 => 1564691744,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d436008e47f01_00665507 (Smarty_Internal_Template $_smarty_tpl) {
?>
    <section class="row" id="fazerlogin">
        
        

        <form name="cliente_login" method="post" action="" >     

            <div class="col-md-4 text-center">
                <h2>Entrar</h2>


            </div>
            <!---  aqui estão os campos -->
            <div class="col-md-4">


                <div class="form-group"> 
                    <label> Email: </label>
                    <input type="email"  class="form-control " name="txt_email" value="" placeholder="Digite seu email" required autocomplete="off">        

                </div>


                <div class="form-group"> 
                     <label> Senha: </label>
                     <input type="password"  class="form-control " name="txt_senha" value="" placeholder="Digite sua senha" required>        

                </div>


                <div class="form-group"> 

                    <button class="btn btn-success btn-block btn-lg"><i class="glyphicon glyphicon-log-in"></i> Entrar </button>




                </div>
                <div class="form-group"> 

                    <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_CADASTRO']->value;?>
" class="btn btn-default "><i class="glyphicon glyphicon-pencil"></i> Me Cadastrar</a>


                    <a href="<?php echo $_smarty_tpl->tpl_vars['PAG_RECOVERY']->value;?>
" class="btn btn-default "><i class="glyphicon glyphicon-question-sign"></i> Esqueci a Senha</a>




                </div>


            </div><!-- fim dos campos --->


            <div class="col-md-4 text-center"> 


            </div>

        </form>


    </section>


<?php }
}
