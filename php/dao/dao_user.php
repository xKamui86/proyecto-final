<?php

include_once("../../system/connectionDB.php");

class DaoUser{
    private $objConnection;
    private $arrayResult;
    private $intValidation;

    public function __construct(){

        $this->objConnection=new Connection();
        $this->arrayResult = array();
        $this->intValidation = 0 ;
    }

    public function newUser($objUser){

        try{
            $conn=$this->objConnection->connect();
            $conn->query("SET NAMES 'utf8'");

            if($conn!=null){

                $dataUser=$objUser->__getid().",'".$objUser->__getname()."','".$objUser->__getpassword()."','".$objUser->__getemail()."',".$objUser->__getdoc().",".$objUser->__getphone();

                #prueba para que muestre por pantalla la sentencia sql 
                echo "INSERT INTO users(id,name,password,email,doc,phone) VALUE(".$dataUser.")";
                
                if($conn->query("INSERT INTO users(id,name,password,email,doc,phone) VALUE (".$dataUser.")")){
                    $this->intValidation=1;
                }else{
                    $this->intValidation=0;
                }
               
            }
            $conn->close();

        }
        catch(Exception $ex){
            echo 'exception captured;',$ex->getMessage(),"\n";
            $this->intValidation=0;

        }
        return $this->intValidation;
    }


}


?>