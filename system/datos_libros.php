<?php

$conexion = mysqli_connect("localhost","root","","proyecto_biblioteca",);

$select = mysqli_query($conexion,"select * from libros");
while ($datos=mysqli_fetch_assoc($select)){
    $arr[]=$datos;

    

}
echo json_encode($arr);

?>