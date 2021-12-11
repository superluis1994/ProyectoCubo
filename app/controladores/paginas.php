<?php
class Paginas extends Controlador{

    public function __construct(){
        // echo "Controlador Pagina Cargando";

    }
    public function index(){

        $datos =[
            'titulo'=>'Bienvenido sorto'
        ];
       
           $this->vista("paginas/inicio",$datos);
    }

    public function adm(){

      
       
           $this->vista("paginas/adm");
    }


    public function dato($num_registre){
        echo $num_registre;

    }
}



