<?php
/* Smarty version 3.1.33, created on 2020-03-28 21:57:05
  from 'C:\wamp64\www\Loja-Virtual-Gaby-Modas\view\cliente_dados.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5e7ff261a291a6_39025058',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '43c77373537eee80d441b1f6021a73ea605eb05f' => 
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual-Gaby-Modas\\view\\cliente_dados.tpl',
      1 => 1585443316,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5e7ff261a291a6_39025058 (Smarty_Internal_Template $_smarty_tpl) {
?><br>  
<div>
    <form name="cadcliente" class="well form-horizontal" action="" method="post"  id="cadcliente">

        <fieldset>

            <!-- Form Name -->
            <center>
            <h3 id="meusdados">Meus Dados</h3>
            </center>
            <br>
            <center><p style="color: red;">Cadastrado em <?php echo date('d/m/y H:i',strtotime($_smarty_tpl->tpl_vars['CLI_DATA_CAD']->value));?>
</p> </center>
            <br>
            <!-- Nome-->

            <div class="form-group">
              <label class="col-md-4 control-label">Nome</label>
              <div class="col-md-4 inputGroupContainer">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['CLI_NOME']->value;?>
" name="cli_nome" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>



            <!-- CPF-->

            <div class="form-group">
              <label class="col-md-4 control-label" >CPF</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['CLI_CPF']->value;?>
" name="cli_cpf" class="form-control" minlength="11" maxlength="11" required>
                </div>
              </div>
            </div>

            <!-- Whatsapp-->

            <div class="form-group">
              <label class="col-md-4 control-label">Whatsapp</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="<?php echo $_smarty_tpl->tpl_vars['CLI_CELULAR']->value;?>
" name="cli_celular" class="form-control" required maxlength="11" min="11111111111">
                </div>
              </div>
            </div>

            <!-- Telefone-->

            <div class="form-group">
              <label class="col-md-4 control-label">Telefone</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="<?php echo $_smarty_tpl->tpl_vars['CLI_FONE']->value;?>
" name="cli_fone" class="form-control" required maxlength="11">
                </div>
              </div>
            </div>



            <!-- Rua-->
            <div class="form-group">
              <label class="col-md-4 control-label">Rua</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['CLI_ENDERECO']->value;?>
" name="cli_endereco" class="form-control"  minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Numero-->
            <div class="form-group">
              <label class="col-md-4 control-label">Numero</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['CLI_NUMERO']->value;?>
" name="cli_numero" class="form-control" required>
                </div>
              </div>
            </div>

            <!--            Ponto de Referencia-->
            <div class="form-group">
              <label class="col-md-4 control-label">Ponto de Referência</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input type="text" placeholder="Próximo de..." value="<?php echo $_smarty_tpl->tpl_vars['CLI_PONTO_REFERENCIA']->value;?>
" name="cli_ponto_referencia"  class="form-control" minlength="5" required>
                </div>
              </div>
            </div>
 
            <!-- Bairro-->
            <div class="form-group">
              <label class="col-md-4 control-label">Bairro</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['CLI_BAIRRO']->value;?>
" name="cli_bairro" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>
            
            

            <!-- Cidade -->

            <div class="form-group">
              <label class="col-md-4 control-label">Cidade</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="<?php echo $_smarty_tpl->tpl_vars['CLI_CIDADE']->value;?>
" name="cli_cidade" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>
            
            <!-- Estados -->
            
            <div class="form-group">
              <label class="col-md-4 control-label">Estado</label>
                <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                <select name="cli_uf" class="form-control selectpicker" required>
                    <option value="">selecione o seu estado</option>
                    <option value="SP" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable1 = ob_get_clean();
if ($_prefixVariable1 == 'SP') {?>selected="selected"<?php }?>>São Paulo</option>
                    <option value="AC" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable2 = ob_get_clean();
if ($_prefixVariable2 == 'AC') {?>selected="selected"<?php }?>>Acre</option>
                    <option value="AL" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable3 = ob_get_clean();
if ($_prefixVariable3 == 'AL') {?>selected="selected"<?php }?>>Alagoas</option>
                    <option value="AP" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable4 = ob_get_clean();
if ($_prefixVariable4 == 'AP') {?>selected="selected"<?php }?>>Amapá</option>
                    <option value="AM" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable5 = ob_get_clean();
if ($_prefixVariable5 == 'AM') {?>selected="selected"<?php }?>>Amazonas</option>
                    <option value="BA" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable6 = ob_get_clean();
if ($_prefixVariable6 == 'BA') {?>selected="selected"<?php }?>>Bahia</option>
                    <option value="CE" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable7 = ob_get_clean();
if ($_prefixVariable7 == 'CE') {?>selected="selected"<?php }?>>Ceará</option>
                    <option value="DF" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable8 = ob_get_clean();
if ($_prefixVariable8 == 'DF') {?>selected="selected"<?php }?>>Distrito Federal</option>
                    <option value="ES" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable9 = ob_get_clean();
if ($_prefixVariable9 == 'ES') {?>selected="selected"<?php }?>>Espírito Santo</option>
                    <option value="GO" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable10 = ob_get_clean();
if ($_prefixVariable10 == 'GO') {?>selected="selected"<?php }?>>Goiás</option>
                    <option value="MA" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable11 = ob_get_clean();
if ($_prefixVariable11 == 'MA') {?>selected="selected"<?php }?>>Maranhão</option>
                    <option value="MT" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable12 = ob_get_clean();
if ($_prefixVariable12 == 'MT') {?>selected="selected"<?php }?>>Mato Grosso</option>
                    <option value="MS" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable13 = ob_get_clean();
if ($_prefixVariable13 == 'MS') {?>selected="selected"<?php }?>>Mato Grosso do Sul</option>
                    <option value="MG" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable14 = ob_get_clean();
if ($_prefixVariable14 == 'MG') {?>selected="selected"<?php }?>>Minas Gerais</option>
                    <option value="PA" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable15 = ob_get_clean();
if ($_prefixVariable15 == 'PA') {?>selected="selected"<?php }?>>Pará</option>
                    <option value="PB" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable16 = ob_get_clean();
if ($_prefixVariable16 == 'PB') {?>selected="selected"<?php }?>>Paraíba</option>
                    <option value="PR" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable17 = ob_get_clean();
if ($_prefixVariable17 == 'PR') {?>selected="selected"<?php }?>>Paraná</option>
                    <option value="PE" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable18 = ob_get_clean();
if ($_prefixVariable18 == 'PE') {?>selected="selected"<?php }?>>Pernambuco</option>
                    <option value="PI" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable19 = ob_get_clean();
if ($_prefixVariable19 == 'PI') {?>selected="selected"<?php }?>>Piauí</option>
                    <option value="RJ" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable20 = ob_get_clean();
if ($_prefixVariable20 == 'RJ') {?>selected="selected"<?php }?>>Rio de Janeiro</option>
                    <option value="RN" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable21 = ob_get_clean();
if ($_prefixVariable21 == 'RN') {?>selected="selected"<?php }?>>Rio Grande do Norte</option>
                    <option value="RS" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable22 = ob_get_clean();
if ($_prefixVariable22 == 'RS') {?>selected="selected"<?php }?>>Rio Grande do Sul</option>
                    <option value="RO" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable23 = ob_get_clean();
if ($_prefixVariable23 == 'RO') {?>selected="selected"<?php }?>>Rondônia</option>
                    <option value="RR" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable24 = ob_get_clean();
if ($_prefixVariable24 == 'RR') {?>selected="selected"<?php }?>>Roraima</option>
                    <option value="SC" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable25 = ob_get_clean();
if ($_prefixVariable25 == 'SC') {?>selected="selected"<?php }?>>Santa Catarina</option>
                    <option value="SE" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable26 = ob_get_clean();
if ($_prefixVariable26 == 'SE') {?>selected="selected"<?php }?>>Sergipe</option>
                    <option value="TO" <?php ob_start();
echo $_smarty_tpl->tpl_vars['CLI_UF']->value;
$_prefixVariable27 = ob_get_clean();
if ($_prefixVariable27 == 'TO') {?>selected="selected"<?php }?>>Tocantins</option>
                </select>
              </div>
            </div>
            </div>

            <!-- CEP-->

            <div class="form-group">
              <label class="col-md-4 control-label">CEP</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input type="number" value="<?php echo $_smarty_tpl->tpl_vars['CLI_CEP']->value;?>
" name="cli_cep" class="form-control" minlength="8" maxlength="8" required>
                </div>
            </div>
            </div>


      
            <br><hr>
            <!-- Senha-->
            <div class="form-group">
              <label class="col-md-4 control-label">Digite sua senha atual por segurança<br>(<small>sua senha não será alterada</small>)</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" name="txt_senha" id="cli_senha" class="form-control" required>
                </div>
              </div>
            </div>




            <!-- Success message -->
            <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label"></label>
              <div class="col-md-4">
                <button type="submit" class="btn btn-success botaoroxo" >Atualizar cadastro <span class="glyphicon glyphicon-send"></span></button>
              </div>
            </div>

        </fieldset>
    </form>
</div><!-- /.container -->
<br><br>

<?php }
}
