<?php


include("../../php/dto/dto_connection.php");
#include("../php/dto/dto_connection.php");

class Connection{
    private $mysaql;
    private $objDto;


    public function connect(){
        try{
            $objDto=new DtoConnection();
            $dataDB=$objDto->getData();
            $mysql=new mysqli($dataDB[0],$dataDB[1],$dataDB[2],$dataDB[3]);
            //echo "connected";
        }
        catch(PDOException $e){
            die("Error ocurred;".$e->getMessage());
        }

        return $mysql ;
    }

}



#se crea e intancia objeto para hacer prueba de la coneccion 
#$con=new Connection();
#$con->connect();
?>