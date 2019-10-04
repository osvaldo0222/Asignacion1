<!DOCTYPE html>
<html lang="es">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Login</title>
    <link rel="stylesheet" href="css.css">
  </head>
  <body>

  <form action="/autenticar" method="post">
    <div class="imgcontainer">
      <img src="https://pages.theascent.com/hubfs/add%20authorized%20user.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="usuario"><b>Nombre</b></label>
      <input type="text" placeholder="Nombre" name="usuario" id="usuario" required>

      <label for="password"><b>Contrasena</b></label>
      <input type="password" placeholder="Contraseña" name="password" id="password" required>

      <button type="submit">Entrar</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1"></div>
  </form>
  </body>
</html>