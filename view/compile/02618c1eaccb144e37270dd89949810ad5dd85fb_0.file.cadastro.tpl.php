<?php
/* Smarty version 3.1.33, created on 2019-07-26 00:14:21
  from 'C:\wamp64\www\Loja-Virtual\view\cadastro.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.33',
  'unifunc' => 'content_5d3a45ddf3d205_76840499',
  'has_nocache_code' => false,
  'file_dependency' =>
  array (
    '02618c1eaccb144e37270dd89949810ad5dd85fb' =>
    array (
      0 => 'C:\\wamp64\\www\\Loja-Virtual\\view\\cadastro.tpl',
      1 => 1564100047,
      2 => 'file',
    ),
  ),
  'includes' =>
  array (
  ),
),false)) {
function content_5d3a45ddf3d205_76840499 (Smarty_Internal_Template $_smarty_tpl) {
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

            <!-- Data Nasc-->

            <div class="form-group">
              <label class="col-md-4 control-label" >Data Nasc</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="date" name="cli_data_nasc" class="form-control" required>
                </div>
              </div>
            </div>

            <!-- RG-->

            <div class="form-group">
              <label class="col-md-4 control-label" >RG</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" placeholder="Digite seu RG" name="cli_rg" class="form-control" required>
                </div>
              </div>
            </div>

            <!-- CPF-->

            <div class="form-group">
              <label class="col-md-4 control-label" >CPF</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" placeholder="Digite seu CPF" name="cli_cpf" class="form-control" minlength="11" maxlength="11" required>
                </div>
              </div>
            </div>

            <!-- DDD-->

            <div class="form-group">
              <label class="col-md-4 control-label" >DDD</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" placeholder="Digite o DDD" name="cli_ddd" class="form-control"  min="10" max="99" required>
                </div>
              </div>
            </div>

            <!-- Whatsapp-->

            <div class="form-group">
              <label class="col-md-4 control-label">Whatsapp</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" placeholder="Digite seu whatsapp" name="cli_celular" class="form-control" required>
                </div>
              </div>
            </div>

            <!-- Telefone-->

            <div class="form-group">
              <label class="col-md-4 control-label">Telefone</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" placeholder="Digite seu telefone" name="cli_fone" class="form-control" required>
                </div>
              </div>
            </div>



            <!-- Rua-->
            <div class="form-group">
              <label class="col-md-4 control-label">Rua</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" placeholder="Digite a sua rua" name="cli_endereco" class="form-control"  minlength="3" required>
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
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input type="text" placeholder="Digite a sua cidade" name="cli_cidade" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Estado -->

            <div class="form-group">
              <label class="col-md-4 control-label">Estado</label>
                <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                <select name="cli_uf" class="form-control selectpicker" >
                    <option value=" " >Selecione seu Estado</option>
                    <option value="AC">Acre</option>
                    <option value="AL">Alagoas</option>
                    <option value="AP">Amapá</option>
                    <option value="AM">Amazonas</option>
                    <option value="BA">Bahia</option>
                    <option value="CE">Ceará</option>
                    <option value="DF">Distrito Federal</option>
                    <option value="ES">Espírito Santo</option>
                    <option value="GO">Goiás</option>
                    <option value="MA">Maranhão</option>
                    <option value="MT">Mato Grosso</option>
                    <option value="MS">Mato Grosso do Sul</option>
                    <option value="MG">Minas Gerais</option>
                    <option value="PA">Pará</option>
                    <option value="PB">Paraíba</option>
                    <option value="PR">Paraná</option>
                    <option value="PE">Pernambuco</option>
                    <option value="PI">Piauí</option>
                    <option value="RJ">Rio de Janeiro</option>
                    <option value="RN">Rio Grande do Norte</option>
                    <option value="RS">Rio Grande do Sul</option>
                    <option value="RO">Rondônia</option>
                    <option value="RR">Roraima</option>
                    <option value="SC">Santa Catarina</option>
                    <option value="SP">São Paulo</option>
                    <option value="SE">Sergipe</option>
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
              <input type="text" placeholder="Digite o seu CEP" name="cli_cep" class="form-control" minlength="8" maxlength="8" required>
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
            <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label"></label>
              <div class="col-md-4">
                <button type="submit" class="btn btn-success" >Cadastrar <span class="glyphicon glyphicon-send"></span></button>
              </div>
            </div>

        </fieldset>
    </form>
</div><!-- /.container -->
    <?php }
}
