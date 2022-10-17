{include file="header.tpl"}

<div class="item-body">
    <h1 class="list-unstyled">Modificando service...</h1>
    <form action="updateService/{$service->id_service}/{$service->id_auto}" method="POST" class="my-4">
        <div class="row">

            <div class="col-9">
                <div class="form-group">
                    <input name="id_auto" type="hidden" class="form-control" value="{$service->id_service}" required>
                </div>
            </div>

            <div class="col-9">
                <div class="form-group">
                    <label><b>Fecha</b></label>
                    <input name="fecha" type="date" class="form-control" value="{$service->fecha}" required>
                </div>
            </div>

            <div class="col-9">
                <div class="form-group">
                    <label><b>Kilometraje</b></label>
                    <input name="km" type="text" class="form-control" value="{$service->km}" required>
                </div>
            </div>

            <div class="col-9">
                <div class="form-group">
                    <label><b>Kilometraje del próximo service</b></label>
                    <input name="km_prox_service" type="text" class="form-control" value="{$service->km_prox_service}"
                        required>
                </div>
            </div>

            <div class="col-9">
                <div class="form-group">
                    <label><b>Gastos repuestos</b></label>
                    <input name="gastos_repuestos" type="text" class="form-control" value="{$service->gastos_repuestos}"
                        required>
                </div>
            </div>

            <div class="col-9">
                <div class="form-group">
                    <label><b>Gastos mano de obra</b></label>
                    <input name="gastos_mo" type="text" class="form-control" value="{$service->gastos_mo}" required>
                </div>
            </div>
            
            <div class="col-9">
                <div class="form-group">
                    <label><b>Descripción</b></label>
                    <input name="descripcion" type="text" style="height:150px;" class="form-control"
                        value="{$service->descripcion}" required>
                </div>
            </div>

            <div class="col-9">
                <div class="form-group">
                    <br><input value="Modificar" type="submit" class="btn btn-secondary btn-sm">
                </div>
            </div>
        </div>

    </form>
</div>

{include file="footer.tpl"}