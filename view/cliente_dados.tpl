<br>
<div>
    <form name="cadcliente" class="well form-horizontal" action="" method="post"  id="cadcliente">

        <fieldset>

            <!-- Form Name -->
            <center>
            <h3 id="meusdados">Meus Dados</h3>
            </center>
            <br>
            <!-- Nome-->

            <div class="form-group">
              <label class="col-md-4 control-label">Nome</label>
              <div class="col-md-4 inputGroupContainer">
              <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="{$CLI_NOME}" name="cli_nome" class="form-control" minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Sobrenome-->

            <div class="form-group">
              <label class="col-md-4 control-label" >Sobrenome</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="{$CLI_SOBRENOME}" name="cli_sobrenome" class="form-control"  minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Data Nasc-->

<!--
            <div class="form-group">
              <label class="col-md-4 control-label" >Data Nasc</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="date" value="{$CLI_DATA_NASC}" name="cli_data_nasc" class="form-control" required>
                </div>
              </div>
            </div>
-->

            <!-- RG-->

<!--
            <div class="form-group">
              <label class="col-md-4 control-label" >RG</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="{$CLI_RG}" name="cli_rg" class="form-control" required>
                </div>
              </div>
            </div>
-->

            <!-- CPF-->

            <div class="form-group">
              <label class="col-md-4 control-label" >CPF</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="{$CLI_CPF}" name="cli_cpf" class="form-control" minlength="11" maxlength="11" required readonly>
                </div>
              </div>
            </div>

            <!-- DDD-->

            <div class="form-group">
              <label class="col-md-4 control-label" >DDD</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="{$CLI_DDD}" name="cli_ddd" class="form-control"  min="10" max="99" required>
                </div>
              </div>
            </div>

            <!-- Whatsapp-->

            <div class="form-group">
              <label class="col-md-4 control-label">Whatsapp</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="{$CLI_CELULAR}" name="cli_celular" class="form-control" required maxlength="9">
                </div>
              </div>
            </div>

            <!-- Telefone-->

            <div class="form-group">
              <label class="col-md-4 control-label">Telefone</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="{$CLI_FONE}" name="cli_fone" class="form-control" required maxlength="9">
                </div>
              </div>
            </div>



            <!-- Rua-->
            <div class="form-group">
              <label class="col-md-4 control-label">Rua</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="{$CLI_ENDERECO}" name="cli_endereco" class="form-control"  minlength="3" required>
                </div>
              </div>
            </div>

            <!-- Numero-->
            <div class="form-group">
              <label class="col-md-4 control-label">Numero</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="{$CLI_NUMERO}" name="cli_numero" class="form-control" required>
                </div>
              </div>
            </div>

            <!-- Bairro-->
            <div class="form-group">
              <label class="col-md-4 control-label">Bairro</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="{$CLI_BAIRRO}" name="cli_bairro" class="form-control" minlength="3" required>
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
                    <option value="Caraguatatuba" {if {$CLI_CIDADE} == 'Caraguatatuba'}selected="selected"{/if}>Caraguatatuba</option>
                    <option value="Sao Sebastiao" {if {$CLI_CIDADE} == 'Sao Sebastiao'}selected="selected"{/if}>São Sebastião</option>
                    <option value="Ubatuba" {if {$CLI_CIDADE} == 'Ubatuba'}selected="selected"{/if}>Ubatuba</option>
                    <option value="Ilha Bela" {if {$CLI_CIDADE} == 'Ilha Bela'}selected="selected"{/if}>Ilha Bela</option>
                </select>
              </div>
            </div>
            </div>

            <!-- Estado -->
<!--
            <div class="form-group">
              <label class="col-md-4 control-label">Estado</label>
                <div class="col-md-4 selectContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                <select name="cli_uf" class="form-control selectpicker" required>
                    <option value="" >Selecione seu Estado</option>
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
-->

            <!-- CEP-->

            <div class="form-group">
              <label class="col-md-4 control-label">CEP</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input type="number" value="{$CLI_CEP}" name="cli_cep" class="form-control" minlength="8" maxlength="8" required>
                </div>
            </div>
            </div>


            <!-- E-Mail-->
            <div class="form-group">
              <label class="col-md-4 control-label">E-Mail</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
              <input type="email" value="{$CLI_EMAIL}" name="cli_email" class="form-control" required>
                </div>
              </div>
            </div>
            <br><hr><br>
            <!-- Senha-->
            <div class="form-group">
              <label class="col-md-4 control-label">Digite sua senha atual por segurança<br>(<small>sua senha não será alterada</small>)</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                    <input type="password" name="cli_senha" id="cli_senha" class="form-control" required>
                </div>
              </div>
            </div>




            <!-- Success message -->
            <div class="alert alert-success" role="alert" id="success_message">Success <i class="glyphicon glyphicon-thumbs-up"></i> Thanks for contacting us, we will get back to you shortly.</div>

            <!-- Button -->
            <div class="form-group">
              <label class="col-md-4 control-label"></label>
              <div class="col-md-4">
                <button type="submit" class="btn btn-success" >Atualizar cadastro <span class="glyphicon glyphicon-send"></span></button>
              </div>
            </div>

        </fieldset>
    </form>
</div><!-- /.container -->
<br><br>

