{include file="header.tpl"}

<div class="item-body">
  <div class="parrafo">
    <p>Mostrando services ({$count}) de <b>{$auto->duenio}</b> - <b>{$auto->patente}</b> - <b>{$auto->modelo}</b> </p>
  </div>
<div>

{if isset($smarty.session.USER_ID)}
  <div class="item-body">
    <p>
      <a class="btn btn-secondary btn-sm" data-bs-toggle="collapse" href="#collapseExample" role="button"
        aria-expanded="false" aria-controls="collapseExample">
        Agregar Service
      </a>
    </p>
    <div class="collapse" id="collapseExample">
      <div class="card card-body">
        {include file="form_alta_service.tpl"}
      </div>
    </div>
  </div>
{/if}


<!-- lista de services de un auto específico-->
<div class="item-body">
  <ul class="list-group">
    {foreach from=$services item=$service}
      <li class="list-group-item justify-content-between align-items-center">
        <div><b>Fecha:</b> {$service->fecha}</div>
        <div><b>Kilometraje:</b> {$service->km}</div>
        <div><b>Kilometraje-Prox-Service:</b> {$service->km_prox_service}</div>
        <div><b>Gastos Service:</b> {$service->gastos_repuestos}</div>
        <div><b>Gastos Mano Obra:</b> {$service->gastos_mo}</div>
        <div><b>Descripción:</b> {$service->descripcion}</div>
        {if isset($smarty.session.USER_ID)}
          <a href='editService/{$service->id_service}' type='button' class='btn btn-success btn-sm'>Editar</a>
          <a href='deleteService/{$service->id_service}/{$service->id_auto}' type='button'
            class='btn btn-danger btn-sm'>Borrar</a>
        {/if}
      </li>
    {/foreach}
  </ul>
</div>

</div>

<br>



{include file="footer.tpl"}