<!DOCTYPE html>
<html>
<head>
<title>asignacion #1</title>

<link rel="stylesheet" href="css.css">
</head>
<body>
  <div class="wrapper fadeInDown">
    <div id="formContent">
      <!-- Tabs Titles -->
      <h2 class="active"> asignacion #1 </h2>
      
  
      <!-- Icon -->
      <div class="fadeIn first">
        <img src="https://img.icons8.com/bubbles/100/000000/user.png" id="" alt="User Icon" />
      </div>
  
      <!-- Login Form -->
      <form action="/autenticar" method="post">
        <label for="usuario"><b>Nombre</b></label>
      <input type="text" placeholder="Nombre" name="usuario" id="usuario" required>

      <label for="password"><b>Contrasena</b></label>
      <input type="password" placeholder="password" name="password" id="password" required>
      <input type="submit" class="fadeIn fourth" value="Log In">
      </form>
  
      <!-- Remind Passowrd -->
      <div id="formFooter">
        <span>Parcialmente tomado de </span><a class="underlineHover" href="#">www.reshdesignweb.com </a>
      </div>
  
    </div>
  </div>

</body>
</html>