{include file="header.tpl"}

<section class="h-100 gradient-form" style="background-color: rgb(88, 81, 81);">
    <div class="container py-5 h-100">
        <div class="row d-flex justify-content-center align-items-center h-100">
            <div class="col-xl-10">
                <div class="card rounded-3 text-black">
                    <div class="row g-0">
                        <div class="col-lg-6">
                            <div class="card-body p-md-5 mx-md-4">

                                <div class="text-center">
                                    <img src="./img/logowhite.jpeg" style="width: 185px;" alt="logo">
                                    <h4 class="mt-1 mb-5 pb-1">Lleva tus services al día</h4>
                                </div>

                                <form action="validate" method="POST">
                                    <p>Por favor, ingrese a su cuenta</p>

                                    <div class="form-outline mb-4">
                                        <input type="email" name="email" id="form2Example11" class="form-control" / required>
                                        <label class="form-label" for="form2Example11"><b>Email</b></label>
                                    </div>

                                    <div class="form-outline mb-4">
                                        <input type="password" name="password" id="form2Example22" class="form-control" / required>
                                        <label class="form-label" for="form2Example22"><b>Contraseña</b></label>
                                    </div>

                                    <div class="text-center pt-1 mb-5 pb-1">
                                        <button class="btn btn-secondary btn-sm" type="submit">Iniciar sesión</button>
                                        <a class="text-muted" href="#!">¿Olvidaste tu contraseña?</a>
                                    </div>

                                    {if $error} 
                                        <div class="alert alert-danger mt-3">
                                            {$error}
                                        </div>
                                    {/if}

                                    <div class="d-flex align-items-center justify-content-center pb-4">
                                        <p class="mb-0 me-2">¿No tienes una cuenta?</p>
                                        <button type="button" class="btn btn-danger btn-sm">Crear</button>
                                    </div>

                                </form>

                            </div>

                        </div>
                        <div class="col-lg-6 d-flex align-items-center gradient-custom-2">
                            <img src="./img/tallermecanico4.jpeg"  class="d-block w-100 border col-2 rounded" alt="...">
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

{include file="footer.tpl"}