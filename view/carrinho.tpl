     
<h3>Meu Carrinho</h3>
<hr>
<!-- botoes e opções de cima -->
<section class="row">

    <div class="col-md-4 ">
        <a href="{$PAG_PRODUTOS}" class="btn btn-success botaoroxo" title="">Comprar mais</a>
    </div>


</section> 
    <br>

<!--  table listagem de itens -->
<section class="row ">

    <center>
    <table id="tabelacarrinho" class="table table-bordered" style="width: 95%">



        <tr class="text-danger bg-danger">
            <td></td>
            <td>Produto</td>
            <td>Valor R$</td>
            <td>T</td>
            <td>Sub Total R$</td>
        </tr>


       {foreach from=$PRO item=P}

        <tr>

            <td> <img src="{$P.pro_img}" alt="{$P.pro_img}"> </td>
            <td>{$P.pro_qtd} {$P.pro_nome} </td>
            <td> {$P.pro_valor} </td>
            <td> {$P.pro_tamanho} </td>
            <td> {$P.pro_subTotal}
                <form name="carrinho_dell" method="post" action="{$PAG_CARRINHO_ALTERAR}">

                    <input type="hidden" name="pro_id" value="{$P.pro_id}">
                    <input type="hidden" name="acao" value="del">

                    <button class="btn btn-danger btn-sm botaoroxo"> <i class="glyphicon glyphicon-trash"></i> </button>
                </form>


            </td>
<!--
            <td>

            </td>
-->


        </tr>
        {/foreach}


    </table>

    </center>


</section><!-- fim da listagem itens -->

<!--  bloco frete -->
<!--
<section class="row" id="dadosfrete">




       <div class="col-md-4"></div>


       <div class="col-md-4">
-->

           <!-- campos para tratar  do  frete -->
<!--
           <input type="hidden" name="peso_frete" id="peso_frete" value="{$PESO}" class="form-control " readonly required>

           <input type="text" name="cep_frete" class="form-control" id="cep_frete" value="" placeholder="digite seu cep" >


           <input type="hidden" name="frete_valor" id="frete_valor" value="0">


    </div>


       <div class="col-md-4">
-->
           <!-- botão frete -->
<!--
           <button class="btn btn-warning btn-block" id="buscar_frete"> <i class="glyphicon glyphicon-send"></i> Calcular Frete </button>


       </div>




</section>
<br><hr>
-->

<!-- botoes de baixo e valor total -->
<section class="row" id="total">

    <div class="col-md-4 text-right">


    </div>
    <div class="col-md-4 text-right">


    </div>

        <div class="col-md-4 text-right text-danger bg-warning">
        <hr>
    <h4>
       Total : R$ {$TOTAL} + Frete R$ {$FRETE_PRECO}
        <br><br>
       {if !Login::Logado()}
        <a href="{$PAG_LOGIN}">Faça o login para calcular frete</a>
        {/if}
        <br><br>
        {$CLI_ENDERECO}
    </h4>
        <hr>

    </div> 
</section>
    
    <br>
    
<section class="row" id="confirmarpedido">
    <div class="col-lg-4 ">
    </div>
    <div class="col-lg-4 ">
    </div>
    <div class="col-md-4 text-right">

        <form name="pedido_confirmar" id="pedido_confirmar" method="post" action="{$PAG_CONFIRMAR}">
            <span id="frete"></span>
           <!-- botão finalzar -->
           <button class="btn btn-success btn-block btn-lg botaoroxo" type="submit" >  <i class="glyphicon glyphicon-ok"></i> Confirmar Pedido </button>


       </form>

   </div>




       <br>


    <!-- botão de limpar-->
<!--
    <div class="col-md-4 ">

        <form name="limpar" method="post" action="{$PAG_CARRINHO_ALTERAR}">
            <input type="hidden" name="acao" value="limpar">
            <input type="hidden" name="pro_id" value="1">

            <button class="btn btn-danger btn-block"> <i class="glyphicon glyphicon-trash"></i> Limpar Tudo</button>

        </form>

    </div>
-->
</section>
<br>

<section>
    <center>
        <h4><strong>Pagamento na Entrega</strong></h4> 
        <p>Entregamos somente em <strong>São Sebastião</strong>, <strong>Ilhabela</strong> e <strong>Caraguatatuba</strong> o  frete pode custar de R$0,00 á R$7,00 dependendo do seu bairro e cidade, será informado pelo Whatsapp após a confirmação do pedido.</p>
        <hr>
         <ul>
                <li>NA PRÓXIMA QUARTA-FEIRA ENTREGAREMOS EM SÃO SEBASTIÃO.</li><br>
                <li>NA PRÓXIMA QUINTA-FEIRA ENTREGAREMOS EM CARAGUATATUBA.</li><br>
                <li>NA PRÓXIMA SEXTA-FEIRA ENTREGAREMOS NA ILHABELA.</li><br>
                <li>NO PRÓXIMO SÁBADO ENTREGAREMOS NA COSTA SUL DE SÃO SEBASTIÃO ATÉ BORACÉIA.</li><br>
            </ul>
    </center>
</section>







       <br>
       <br>
       <br>
