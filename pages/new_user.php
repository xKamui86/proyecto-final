







<!-- Parte HTML del formulario -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Enlace de hoja de estilo CSS para creación de nuevo usuario -->
    <link rel="stylesheet" href="../assets/css/new_user.css">
    <title>Crear usuario</title>
</head>
<body>
  <div class="container">
<!-- Formulario HTML de recolección de datos para nuevo usuario -->
    <form  class="form_register" id="form_registrer_new_user" onsubmit="setdata_New_User(event, this.id)">
        <h4>REGISTRESE AQUÍ</h4>
        <input type="hidden" value="0" id="idUser" name="idUser"> 
        <div class="mb-3">
            <label for="name_user" class="form-label"></label>
            <input type="text" class="form-control" id="name_user" placeholder="Digite nombre de usuario" required>
          </div>
        <div class="mb-3">
          <label for="email_adress" class="form-label"></label>
          <input type="email" class="form-control" id="email" placeholder="Digite su correo electrónico" required>
        </div>
        <div class="mb-3">
          <label for="password" class="form-label"></label>
          <input type="password" class="form-control" id="password" placeholder="Digite su nuevo password" required>
        </div>
        <div class="mb-3">
            <label for="cc" class="form-label"></label>
            <input type="number" class="form-control" id="cc" placeholder="Digite número de documento" required>
          </div>
          <div class="mb-3">
            <label for="phone" class="form-label"></label>
            <input type="number" class="form-control" id="phone" placeholder="Digite su número de teléfono" required>
          </div>
        <button type="submit" class="btn" value="Registrar">Registrarse</button>

      </form>
    </div>
      <!-- Enlace de documento JavaSript -->
      <script src="../assets/js/funtions_create_user.js"></script>  
      
<!--  Inclusión de footer  -->
      <footer>
    <?php
      include_once('../pages/footer_biblioteca.html');
    ?>
    </footer>

</body>
</html>