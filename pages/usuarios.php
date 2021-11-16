<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tabla de usuarios</title>
        <link rel="stylesheet" href="../assets/css/style_usuarios.css">
        <script src="../assets/js/jquery-3.6.0.min.js"></script>
        <script src="../assets/js/function_usuarios.js"></script>
        <link rel="import" href="../pages/footer_biblioteca.html">
    </head>
    <body>
<!-- Inclusión de header -->
    <header>
    <?php
      include_once('../pages/header.html');
    ?>
    </header>
        <h1 id="titulo tabla"> INFORMACIÓN USUARIOS</h1>
        <table class="tabla_usuarios">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Name</th>
                    <th>Password</th>
                    <th>Email</th>
                    <th>Documento</th>
                    <th>Phone</th>

                </tr>
            </thead>
            <tbody id="tbody">

            </tbody>
        </table>

        <!--  Inclusión de footer  -->
      <footer>
    <?php
      include_once('../pages/footer_biblioteca.html');
    ?>
    </footer>

        
 
    </body>

    
</html>