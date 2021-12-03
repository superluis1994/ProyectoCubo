<?php 

class connection {
private $conn;

public function __construct(){

    $this-> conn = new mysqli("localhost","root","","almacenados");
}
public function llamar(){
    return $this->conn;
}
public function inser($user="luis",$mail="superluis",$pass="123",$nom="sorto"){
       $sql="call insert_user('".$user."','".$mail."','".$pass."','".$nom."')"
    $l=$this->conn->query($sql);

    return $l;
}

}
?>




