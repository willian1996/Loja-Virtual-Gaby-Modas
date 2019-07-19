<h3>Confirmar Pedido</h3>
<hr>
<!-- botoes e opções de cima -->
<section class="row">

    <div class="col-md-4 ">
        <a href="{$PAG_CARRINHO}" class="btn btn-success" title="">Voltar para Carrinho</a>
    </div>


</section>
    <br>

<!--  table listagem de itens -->
<section class="row ">

    <center>
    <table class="table table-bordered" style="width: 95%">



        <tr class="text-danger bg-danger">
            <td></td>
            <td>Produto</td>
            <td>Valor R$</td>
            <td>X</td>
            <td>Sub Total R$</td>
        </tr>


       {foreach from=$PRO item=P}

        <tr>

            <td> <img src="{$P.pro_img}" alt="{$P.pro_img}"> </td>
            <td> {$P.pro_nome} </td>
            <td> {$P.pro_valor} </td>
            <td> {$P.pro_qtd} </td>
            <td> {$P.pro_subTotal}</td>
<!--
            <td>

            </td>
-->


        </tr>
        {/foreach}


    </table>

    </center>


</section><!-- fim da listagem itens -->

<!-- botoes de baixo e valor total -->
<section class="row" id="total">

    <div class="col-md-4 text-right">

    </div>

    <div class="col-md-4 text-right">

    </div>

    <div class="col-md-4 text-right text-danger bg-warning">
        <h4>
           Total : R$ {$TOTAL}
        </h4>
        <h4>
           Frete : R$ {$FRETE}
        </h4>
        <hr>
        <h4>
           Total com Frete : R$ {$TOTAL_FRETE}
        </h4>
    </div>



</section>
            <br>
            <hr>
<section class="row" id="confirmarpedido">
    <div class="col-md-4 ">
    </div>
    <div class="col-md-4 ">

        <form name="pedido_finalizar" id="pedido_finalizar" method="post" action="{$PAG_FINALIZAR}">

           <!-- botão finalzar -->
           <button class="btn btn-success btn-block btn-lg" type="submit" >  <i class="glyphicon glyphicon-ok"></i> Finalizar Pedido </button>


       </form>

   </div>
    <div class="col-md-4 ">
    </div>

</section>
       <br>
       <br>
       <br>
       <br>
