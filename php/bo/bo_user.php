<?php

include_once('../dto/dto_user.php');
include_once('../dao/dao_user.php');

header("Content-type: application/json; charset=utf-8");


class boUser{

    private $objUser;
    private $objDao;
    private $intValidate;

    public function __construct(){

        $this->objUser=new DtoUser();
        $this->objDao=new DaoUser();
        
    }

    public function newUser($id,$name,$password,$email,$doc,$phone){

        try{

            $this->objUser->__setUser($id,$name,$password,$email,$doc,$phone);
            $intValidate=$this->objDao->newUser($this->objUser);

        }
        catch(Exception $ex){
            echo'Exception captured:',$ex->getMessage(),"\n";
            $intValidate = 0;
        }

        return $intValidate;

    }


}
$obj=new BoUser();
$getData = file_get_contents('php://input');
$data=json_decode($getData);




if(isset($data->POST)){

    if($data->POST=="POST"){

         $obj->newUser($data->idUser, $data->name_user,$data->password,$data->email,$data->cc,$data->phone);

    }
}


#prueba de armado de sql para similar insercion 
#$objt=new BoUser();
#echo $objt->newUser(0,'jhon perra','0hjkfgasd','akshfgs@hotmail.com',102546378,45232426);

?>