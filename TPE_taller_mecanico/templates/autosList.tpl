{include file="header.tpl"}<br>

{if isset($smarty.session.USER_ID)}
  <div class="item-body">
    <p>
      <a class="btn btn-secondary btn-sm" data-bs-toggle="collapse" href="#collapseExample" role="button"
        aria-expanded="false" aria-controls="collapseExample">
        Agregar Auto
      </a>
    </p>
    <div class="collapse" id="collapseExample">
      <div class="card card-body">
        {include file="form_alta_auto.tpl"}
      </div>
    </div>
  </div>
{/if}


<!-- lista de autos -->
<div class="item-body">
  <p><small>Mostrando {$count} autos...</small></p>
  <ul class="list-group text-center">
    {foreach from=$autos item=$auto}
      <li class="list-group-item justify-content-between align-items-center">
        <span> <b>{$auto->patente}</b> - {$auto->modelo} - <b>{$auto->duenio}</b> </span>
        <a href='showServices/{$auto->id_auto}' type='button'
          class='btn btn-secondary btn-sm'>Mostrar{if isset($smarty.session.USER_ID)}/Agregar {/if} Services</a>
        {if isset($smarty.session.USER_ID)}
          <a href='editAuto/{$auto->id_auto}' type='button' class='btn btn-success btn-sm'>Editar</a>
          <a href='delete/{$auto->id_auto}' type='button' class='btn btn-danger btn-sm'>Borrar</a>
        {/if}

      </li>
    {/foreach}
  </ul>
</div>

</div>

{include file="footer.tpl"}