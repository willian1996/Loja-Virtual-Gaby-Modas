<br>  
<div>
    <form name="cadcliente" class="well form-horizontal" action="" method="post"  id="cadcliente">

        <fieldset>

            <!-- Form Name -->
            <center>
            <h3 id="meusdados">Meus Dados</h3>
            </center>
            <br>
            <center><p style="color: red;">Cadastrado em {date('d/m/y H:i',strtotime($CLI_DATA_CAD))}</p> </center>
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



            <!-- CPF-->

            <div class="form-group">
              <label class="col-md-4 control-label" >CPF</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
              <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
              <input type="text" value="{$CLI_CPF}" name="cli_cpf" class="form-control" minlength="11" maxlength="11" required>
                </div>
              </div>
            </div>

            <!-- Whatsapp-->

            <div class="form-group">
              <label class="col-md-4 control-label">Whatsapp</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="{$CLI_CELULAR}" name="cli_celular" class="form-control" required maxlength="11" min="11111111111">
                </div>
              </div>
            </div>

            <!-- Telefone-->

            <div class="form-group">
              <label class="col-md-4 control-label">Telefone</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-earphone"></i></span>
              <input type="number" value="{$CLI_FONE}" name="cli_fone" class="form-control" required maxlength="11">
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

            <!--            Ponto de Referencia-->
            <div class="form-group">
              <label class="col-md-4 control-label">Ponto de Referência</label>
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
              <input type="text" placeholder="Próximo de..." value="{$CLI_PONTO_REFERENCIA}" name="cli_ponto_referencia"  class="form-control" minlength="5" required>
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
                <div class="col-md-4 inputGroupContainer">
                <div class="input-group">
                    <span class="input-group-addon"><i class="glyphicon glyphicon-home"></i></span>
                    <input type="text" value="{$CLI_CIDADE}" name="cli_cidade" class="form-control" minlength="3" required>
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
                    <option value="SP" {if {$CLI_UF} == 'SP'}selected="selected"{/if}>São Paulo</option>
                    <option value="AC" {if {$CLI_UF} == 'AC'}selected="selected"{/if}>Acre</option>
                    <option value="AL" {if {$CLI_UF} == 'AL'}selected="selected"{/if}>Alagoas</option>
                    <option value="AP" {if {$CLI_UF} == 'AP'}selected="selected"{/if}>Amapá</option>
                    <option value="AM" {if {$CLI_UF} == 'AM'}selected="selected"{/if}>Amazonas</option>
                    <option value="BA" {if {$CLI_UF} == 'BA'}selected="selected"{/if}>Bahia</option>
                    <option value="CE" {if {$CLI_UF} == 'CE'}selected="selected"{/if}>Ceará</option>
                    <option value="DF" {if {$CLI_UF} == 'DF'}selected="selected"{/if}>Distrito Federal</option>
                    <option value="ES" {if {$CLI_UF} == 'ES'}selected="selected"{/if}>Espírito Santo</option>
                    <option value="GO" {if {$CLI_UF} == 'GO'}selected="selected"{/if}>Goiás</option>
                    <option value="MA" {if {$CLI_UF} == 'MA'}selected="selected"{/if}>Maranhão</option>
                    <option value="MT" {if {$CLI_UF} == 'MT'}selected="selected"{/if}>Mato Grosso</option>
                    <option value="MS" {if {$CLI_UF} == 'MS'}selected="selected"{/if}>Mato Grosso do Sul</option>
                    <option value="MG" {if {$CLI_UF} == 'MG'}selected="selected"{/if}>Minas Gerais</option>
                    <option value="PA" {if {$CLI_UF} == 'PA'}selected="selected"{/if}>Pará</option>
                    <option value="PB" {if {$CLI_UF} == 'PB'}selected="selected"{/if}>Paraíba</option>
                    <option value="PR" {if {$CLI_UF} == 'PR'}selected="selected"{/if}>Paraná</option>
                    <option value="PE" {if {$CLI_UF} == 'PE'}selected="selected"{/if}>Pernambuco</option>
                    <option value="PI" {if {$CLI_UF} == 'PI'}selected="selected"{/if}>Piauí</option>
                    <option value="RJ" {if {$CLI_UF} == 'RJ'}selected="selected"{/if}>Rio de Janeiro</option>
                    <option value="RN" {if {$CLI_UF} == 'RN'}selected="selected"{/if}>Rio Grande do Norte</option>
                    <option value="RS" {if {$CLI_UF} == 'RS'}selected="selected"{/if}>Rio Grande do Sul</option>
                    <option value="RO" {if {$CLI_UF} == 'RO'}selected="selected"{/if}>Rondônia</option>
                    <option value="RR" {if {$CLI_UF} == 'RR'}selected="selected"{/if}>Roraima</option>
                    <option value="SC" {if {$CLI_UF} == 'SC'}selected="selected"{/if}>Santa Catarina</option>
                    <option value="SE" {if {$CLI_UF} == 'SE'}selected="selected"{/if}>Sergipe</option>
                    <option value="TO" {if {$CLI_UF} == 'TO'}selected="selected"{/if}>Tocantins</option>
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
              <input type="number" value="{$CLI_CEP}" name="cli_cep" class="form-control" minlength="8" maxlength="8" required>
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

