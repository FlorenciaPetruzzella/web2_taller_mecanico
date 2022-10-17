{include file="header.tpl"}

<div class="item-body">
    <h1 class="list-unstyled">Modificando auto...</h1>
    <form action="updateAuto/{$auto->id_auto}" method="POST" class="my-4">
        <div class="row">
        
            <input name="id_auto" type="hidden" class="form-control" value="{$auto->id_auto}" required>

            <div class="col-9 container-fluid">
                <div class="form-group">
                    <label><b>Patente</b></label>
                    <input name="patente" type="text" class="form-control" value="{$auto->patente}" required>
                </div>
            </div>


            <div class=" col-9 container-fluid">
                <div class="form-group">
                    <label><b>Dueño</b></label>
                    <input name="duenio" type="text" class="form-control" value="{$auto->duenio}" required>
                </div>
            </div>


            <div class="col-9 container-fluid">
                <div class="form-group">
                    <label><b>Modelo</b></label>
                    <input name="modelo" type="text" class="form-control" value="{$auto->modelo}" required>
                </div>
            </div>

            <div class="col-9 container-fluid">
                <div class="form-group">
                    <br><input value="Modificar" type="submit" class="btn btn-secondary btn-sm">
                </div>
            </div>

        </div>

    </form>
</div>

{include file="footer.tpl"}