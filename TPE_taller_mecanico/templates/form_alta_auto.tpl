<!-- formulario de alta de autos -->

{if isset($smarty.session.USER_ID)}

    <div class="item-body">
        <h1 class="list-unstyled">Formulario de alta de autos</h1>

        <form action="add" method="POST" class="my-4">
            <div class="row">
                <div class="col-9  container-fluid">
                    <div class="form-group">
                        <label><b>Patente</b></label>
                        <input name="patente" type="text" class="form-control" placeholder="AAA000/AA000AA" required>
                    </div>
                </div>

                <div class="col-9  container-fluid">
                    <div class="form-group">
                        <label><b>Dueño</b></label>
                        <input name="duenio" type="text" class="form-control" placeholder="Juan Pérez" required>
                    </div>
                </div>

                <div class="col-9  container-fluid">
                    <div class="form-group">
                        <label><b>Modelo</b></label>
                        <input name="modelo" type="text" class="form-control" placeholder="Fiat Uno" required><br>
                    </div>
                </div>

                <div class="col-9  container-fluid">
                    <div class="form-group">
                        <br><input value="Agregar" type="submit" class="btn btn-secondary btn-sm">
                    </div>
                </div>


            </div>


        </form>
    </div>

{/if}