<h2 class="text-center">Gerenciar Clientes </h2>
<hr>

<!--- listando clientes ---->
<section class="row">
    
    <center>
        <p>Clique no nome para ver os dados do cliente</p>
    <table class="table table-bordered">
    
        
        <tr class="text-success bg-success">
            
            <td>Nome</td>
            <td>Whatsapp </td>
            <td class="hiddenonmobile">Data cadastro</td>
            <td></td>
        </tr>
        
        {foreach from=$CLIENTES item=C}
        
        <tr>
            <td><a href="{$PAG_EDITAR}/{$C.cli_id}">{$C.cli_nome} {$C.cli_sobrenome}</a></td>
            <td><a href="https://wa.me/55{$C.cli_celular}">{$C.cli_celular}</a></td>
            <td class="hiddenonmobile">{$C.cli_data_cad}</td>
            <td><a href="{$PAG_PEDIDOS}/{$C.cli_id} ">Pedidos</a> </td>
        </tr>
        
        {/foreach}
        
    </table>
    </center >
    
</section>

