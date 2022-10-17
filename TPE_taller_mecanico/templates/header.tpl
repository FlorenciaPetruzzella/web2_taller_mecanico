<!DOCTYPE html>
<html lang="en">

<head>
  <base href="{BASE_URL}">

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
  <link rel="stylesheet" href="./css/style.css">
  <title>TALLER - Mecánico</title>
</head>

<body>

  <nav class="navbar navbar-expand-lg bg-light">
    <div>
      <img src="./img/logo.jpeg" width="200" height="105" alt="logo">
    </div>
    <div class="container-fluid">
      <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
        <div class="navbar-nav">
          <a class="navbar-brand" aria-current="page" href="home">Home</a>
          <a class="nav-link" href="listAutos">Autos</a>
          {if isset($smarty.session.USER_ID)}
            <a class="nav-link" href="listServices">Services</a>
          {/if}
          {if !isset($smarty.session.USER_ID)}
            <a class="nav-link" href="login">Login</a>
          {else}
            <a class="nav-link" href="logout">Logout({$smarty.session.USER_EMAIL})</a>
          {/if}
        </div>
      </div>
    </div>
</nav>