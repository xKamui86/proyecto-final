<?php

class DtoConnection{
    private $user ;
    private $password ;
    private $server ;
    private $database  ;


    function __construct()
    {
        $this->user="root";
        $this->password="";
        $this->server="localhost";
        $this->database="proyecto_biblioteca";
    }

    public function getData(){
        return array($this->server,$this->user,$this->password,$this->database);
    }
}


?>