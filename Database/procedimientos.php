<?php

require_once ('connection.php');

$mysql = new connection();

$conexion =$mysql->llamar();



$datos = array ("username"=>"luis","email"=>"luis@gmail.com","pass"=>sha1("lalala1"),"nombre"=>"luis aguirre");

$statement = $conexion->prepare('call insert_user(?,?,?,?)');

$statement-> bind_param("ssss",$datos["username"], $datos["email"],$datos["pass"],$datos["nombre"]);

$statement->execute();
$statement->close();
$statement->close();

?>