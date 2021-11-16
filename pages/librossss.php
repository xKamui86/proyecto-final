<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Tabla de libros</title>
        <link rel="stylesheet" href="../assets/css/style_libros.css">

        <script src="../assets/js/jquery-3.6.0.min.js"></script>
        <script src="../assets/js/function_libros.js"></script>
    </head>
    <body>

    <!-- Inclusión de header -->
    <header>
    <?php
      include_once('../pages/header.html');
    ?>
    </header>

    
        <h1 id="titulo tabla"> INFORMACIÓN LIBROS</h1>
        <table class="tabla_libros">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Autor</th>
                    <th>Titulo</th>
                    <th>Categoria</th>
                    <th>Editorial</th>
                    <th>Año Publicacion</th>

                </tr>
            </thead>
            <tbody id="tbodys">

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