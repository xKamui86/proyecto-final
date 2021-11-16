<?php

$alert = '';
session_start();

//echo $alert = "hello";

if (!empty($_SESSION['active'])){
  header('Location: ../index.html');
}else{



  if(!empty($_POST)){
    if(empty($_POST["nombre"]) || empty($_POST["clave"])){
      $alert = "Ingrese usuario y clave";
    }
    else{
      require_once  "../system/login.php";
      $user = $_POST["nombre"];
      $pass = $_POST["clave"];
      $query = mysqli_query($conexion,"select * from users WHERE email = '$user' AND password = '$pass' ");
      $result = mysqli_num_rows($query);
      if ($result > 0){
        $data = mysqli_fetch_array($query);

        $_SESSION['active'] = true ;
        $_SESSION['email'] = $data['email'] ;
        $_SESSION['clave'] = $data['password'] ;
        header('Location: ../index.html');
      }else{
        $alert = "El usuario o contraseña son invalidos ";
        session_destroy();
    }
  }
}
}
?>


<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Login Biblioteca</title>
    <link rel="stylesheet" href="../assets/css/login_biblioteca.css">
  </head>
  <body>

    <div class="login-box">
      <img src="../assets/imagenes/avatar.png" class="avatar" alt="Avatar Image">
      <h1>Login Here</h1>
      <form action="" method="post">
        <!-- USERNAME INPUT -->
        <label for="username">Username</label>
        <input type="text" name ="nombre" placeholder="Enter Username">
        <!-- PASSWORD INPUT -->
        <label for="password">Password</label>
        <input type="password" name ="clave"placeholder="Enter Password">
        <input type="submit" value="Log In">
        <div class="alert "><?php echo isset($alert) ? $alert :''; ?></div>   
        <a href="new_user.html">¿ No tiene usuario ? , cree uno aquí </a>
      </form>
    </div>

    <footer>
    <?php
      include_once('footer_biblioteca.html');
    ?>
    </footer>
  </body>
</html>