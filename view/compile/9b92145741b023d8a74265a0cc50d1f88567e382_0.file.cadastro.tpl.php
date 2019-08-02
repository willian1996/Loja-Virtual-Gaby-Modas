<?php
/* Smarty version 3.1.33, created on 2019-08-01 18:56:26
  from 'C:\xampp\htdocs\Loja-Virtual-Gaby-Modas\view\cadastro.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d43600a4050e8_25657738',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9b92145741b023d8a74265a0cc50d1f88567e382' => 
    array (
      0 => 'C:\\xampp\\htdocs\\Loja-Virtual-Gaby-Modas\\view\\cadastro.tpl',
      1 => 1564691744,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5d43600a4050e8_25657738 (Smarty_Internal_Template $_smarty_tpl) {
?><div>
    <form name="cadcliente" class="well form-horizontal" action="" method="post"  id="cadcliente">

        <fieldset>

            <!-- Form Name -->
            <legend>Cadastre-se</legend>

            <!-- Nome-->

            <div class="form-group">
              <label class="col-md-4 control-label">Nome</label>
              <div class="col-md-4 inputGroupContainer">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" placeholder="Digite seu nome" name="cli_nome" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Sobrenome-->

            <div class="form-group">
              <label class="col-md-4 control-label" >Sobrenome</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" placeholder="Digite seu sobrenome" name="cli_sobrenome" class="form-control"  minlength="3" required>
                </div>
              </div>
            </div>

            <!-- CPF-->

            <div class="form-group">
              <label class="col-md-4 control-label" >CPF</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" placeholder="Digite seu CPF" name="cli_cpf" class="form-control" min="11111111111" maxlength="11" required>
                </div>
              </div>
            </div>

            <!-- Whatsapp-->

            <div class="form-group">
              <label class="col-md-4 control-label">Whatsapp</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-phone"></i></span>
              <input type="number" placeholder="Whatsapp com o DDD" name="cli_celular" class="form-control" maxlength="11" min="11111111111"  required>
                </div>
              </div>
            </div>

            <!-- Telefone-->

            <div class="form-group">
              <label class="col-md-4 control-label">Telefone</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" placeholder="Ou celular para recado" name="cli_fone" class="form-control">
                </div>
              </div>
            </div>



            <!-- Rua-->
            <div class="form-group">
              <label class="col-md-4 control-label">Rua</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-road"></i></span>
                    <input type="text" placeholder="Digite a sua rua ou avenida" name="cli_endereco" class="form-control"  minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Numero-->
            <div class="form-group">
              <label class="col-md-4 control-label">Numero</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" placeholder="Digite o numero da casa" name="cli_numero" class="form-control" required>
                </div>
              </div>
            </div>

            <!--            Ponto de Referencia-->
            <div class="form-group">
              <label class="col-md-4 control-label">Ponto de Referência</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-map-marker"></i></span>
              <input type="text" placeholder="Próximo de..." name="cli_ponto_referencia"  class="form-control" minlength="3" required>
                </div>
              </div>
            </div>


            <!-- Bairro-->
            <div class="form-group">
              <label class="col-md-4 control-label">Bairro</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" placeholder="Digite o seu bairro" name="cli_bairro" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>



            <!-- Cidade -->

            <div class="form-group">
              <label class="col-md-4 control-label">Cidade</label>
                <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                <select name="cli_cidade" class="form-control selectpicker" required>
                    <option value="">selecione sua cidade</option>
                    <option value="Sao Sebastiao">São Sebastião</option>
                    <option value="Ilhabela">Ilhabela</option>
                    <option value="Caraguatatuba">Caraguatatuba</option>
                    <option value="Ubatuba">Ubatuba</option>

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
              <input type="text" placeholder="Digite o seu CEP" name="cli_cep" class="form-control">
                </div>
            </div>
            </div>


            <!-- E-Mail-->
            <div class="form-group">
              <label class="col-md-4 control-label">E-Mail</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type="email" placeholder="Digite o seu e-mail" name="cli_email" class="form-control" required>
                </div>
              </div>
            </div>




            <!-- Success message -->
            <div class="alert alert-success" role="alert" id="success_message">Sucesso <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label"></label>
              <div class="col-md-4">
                  <center>
                <button type="submit" class="btn btn-success" >Cadastrar <span class="glyphicon glyphicon-send"></span></button>
                  </center>
              </div>
            </div>

        </fieldset>
    </form>
</div><!-- /.container -->
<?php }
}