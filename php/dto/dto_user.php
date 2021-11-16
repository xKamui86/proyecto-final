<?php

class DtoUser{

    private $id_user;
    private $name_user;
    private $email_user;
    private $password_user;
    private $doc_user;
    private $phone_user;


    public function __construct(){
    }

    public function __setUser($id,$name,$password,$email,$doc,$phone){

        $this->id_user=$id;
        $this->name_user=$name;
        $this->password_user=$password;
        $this->email_user=$email;
        $this->doc_user=$doc;
        $this->phone_user=$phone;

    }

    public function __getUser(){
        $objUser= new DtoUser();

        $objUser->__getid();
        $objUser->__getname();
        $objUser->__getpassword();
        $objUser->__getemail();
        $objUser->__getdoc();
        $objUser->__getphone();
        

        return $objUser;
    }


    //gets

    public function __getid(){
        return $this->id_user;
    }

    public function __getname(){
        return $this->name_user;
    }

    public function __getpassword(){
        return $this->password_user;
    }
    public function __getemail(){
        return $this->email_user;
    }
    public function __getdoc(){
        return $this->doc_user;
    }
    public function __getphone(){
        return $this->phone_user;
    }

    //sets

    public function __setid($id){
        $this->id_user=$id;
    }

    public function __setname($name){
        $this->name_user=$name;
    }
    public function __setpassword($password){
        $this->password_user=$password;
    }
    public function __setemail($email){
        $this->email_user=$email;
    }
    public function __setphone($phone){
        $this->phone_user=$phone;
    }
    public function __setdoc($doc){
        $this->doc_user=$doc;
    }

}

?>