<h2 id="tabelafinalizar">Finalizar Pedido</h2>
<hr>


<!--  table listagem de itens -->
<section class="row ">
    
    

    <center>
        <div class="alert alert-success">
        Pedido Finalizado com Sucesso
    
    </div>
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
                <h4>
               Frete : R$ {$FRETE}
            </h4>
                <hr>
            <h4>
               Total do Pedido : R$ {$TOTAL_FRETE}
            </h4>
            </div>


        </section>

<section class="row">
            <h3 class="text-center"> Formas de pagamento </h3>
            

            <!-- botao de pagamento  -->
            <div class="col-md-4">




                


<!--                   <script type="text/javascript" src="{$PS_SCRIPT}"></script>-->

            </div>
            <div class="col-md-4">

                <img src="{$TEMA}/imagens/logo-pagseguro.png"  alt="">

            </div>

            <div class="col-md-4">

            </div>


</section>

                    <br>
                    <hr>

       <br>
       <br>
       <br>
       <br>
