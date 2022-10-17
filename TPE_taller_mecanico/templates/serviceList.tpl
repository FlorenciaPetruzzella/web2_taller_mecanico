{include file="header.tpl"}

<div class="item-body">
    <table class="table">
        <thead class="thead-dark">
            <tr>
                <th scope="col">Dueño</th>
                <th scope="col">Fecha</th>
                <th scope="col">Kilometraje</th>
                <th scope="col">Kilometraje Prox Service</th>
                <th scope="col">Gastos Respuestos</th>
                <th scope="col">Gastos Mano de Obra</th>
                <th scope="col">Descripción</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$allServices item=$allService}
                <tr>
                    <th scope="row">{$allService->duenio}</th>
                    <td>{$allService->fecha}</td>
                    <td>{$allService->km}</td>
                    <td>{$allService->km_prox_service}</td>
                    <td>{$allService->gastos_repuestos}</td>
                    <td>{$allService->gastos_mo}</td>
                    <td>{$allService->descripcion}</td>
                    <td>
                        {if isset($smarty.session.USER_ID)}
                            <a href='deleteServiceList/{$allService->id_service}/{$allService->id_auto}' type='button'
                                class='btn btn-danger btn-sm'>Borrar</a>
                        {/if}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
</div>

{include file="footer.tpl"}