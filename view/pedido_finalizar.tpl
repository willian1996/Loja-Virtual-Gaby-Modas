<h2 id="tabelafinalizar">Finalizando Pedido...</h2>
<hr>


<!--  table listagem de itens -->
<section class="row ">
    
    

    <center>
        <script>alert("Pedido Finalizado com Sucesso! avisaremos pelo Whatsapp no momento da saperação e da entrega");</script>
        <div class="alert alert-success">
        Pedido Finalizado com Sucesso!
        </div>
        <div class="alert alert-info">
        Será separado na proxima segunda-feira e será entregue na quarta-feira da proxima semana!
        </div>
        <div class="alert alert-warning">
        Atenção pagamento será feito no momento da entrega, aceitamos cartões com 5% de acréscimo!
        </div>
        <br><br>
        <h4>Resumo do seu pedido</h4>
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
            <br><hr>
            <h4 class="text-center"><a href="{$PAG_MINHA_CONTA}#tabelapedidos">Ver meus pedidos</a></h4>
            

            <!-- botao de pagamento  -->
            <div class="col-md-4">




                


<!--                   <script type="text/javascript" src="{$PS_SCRIPT}"></script>-->

            </div>
            <div class="col-md-4">
                <br>
                <img width="100%" src="{$TEMA}/imagens/banner_cartao.jpg" alt="">
                <br>
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
