<?php
define('SERVIDOR','localhost');
define('USUARIO','root');
define('CLAVE','');
define('BASEDATOS','almacenados');


 class clsConexion{
    private $com;
    public function __construct()
    {
        try{
            $this->com=new mysqli(SERVIDOR,USUARIO,CLAVE,BASEDATOS);

        }catch(Exception $e){
            echo $e->errorMessage();
        }
    }
    function loguin($a,$b,$c,$d)
{
  $sql="call insert_user('".$a."','".$a."','".$a."','".$a."')";
  $res=$this->com->query($sql);
        return $res;
}
}

?>
