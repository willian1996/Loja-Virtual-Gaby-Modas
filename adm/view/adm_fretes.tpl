<h2 class="text-center">Frete Motoboy</h2> 
<hr>

<section class="row">
    <form method="post" action=""> 

        
        <div class="checkbox">
        <label>Cidades entregas via motoboy</label><br>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Caraguatatuba">Caraguatatuba</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Sao Sebastiao">Sao Sebastiao</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Ilhabela">Ilhabela</label>
        <label class="tamanho-roupas"><input type="checkbox" name="cidade[]" value="Ubatuba">Ubatuba</label>
        </div>
        
        
        <div class="col-md-2">
            <label>Custo por km</label>
            <input type="text" name="custoPorKM" id="custoPorKM" class="form-control" required >

        </div>
        
        
        
        <div class="col-md-6">
            <label>Endereço remetente</label>
            <input type="text" name="remetente" id="remetente" class="form-control"  required >

        </div>
        
        
        
        
<!-- botão gravar -->



            <div class="col-md-4">

            </div>

            <div class="col-md-4">
                <br>
                <button class="btn btn-success btn-block btn-md" name="btn_gravar">Enviar</button>
            </div>

            <div class="col-md-4">

            </div>


    </form>



<br><br>

</section>