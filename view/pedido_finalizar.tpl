<h3>Finalizar Pedido</h3>
<hr>


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

            <div class="col-md-12 text-right text-danger bg-warning">
            <h4>
               Total : R$ {$TOTAL}
            </h4>
            </div>


        </section>

<section class="row">
            <h3 class="text-center"> Formas de pagamento </h3>
            <div class="col-md-2">

            </div>

            <!-- botao de pagamento  -->
            <div class="col-md-4">




                <img src="{$TEMA}/imagens/pagamento_na_entrega.png"  alt="">


<!--                   <script type="text/javascript" src="{$PS_SCRIPT}"></script>-->

            </div>
            <div class="col-md-4">

                <img src="{$TEMA}/imagens/logo-pagseguro.png"  alt="">

            </div>

            <div class="col-md-2">

            </div>


</section>

                    <br>
                    <hr>

       <br>
       <br>
       <br>
       <br>
