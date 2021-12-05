<?php
class Paginas extends Controlador{

    public function __construct(){
        // echo "Controlador Pagina Cargando";

    }
    public function index(){
       
           $this->vista("paginas/inic");
    }


    public function dato($num_registre){
        echo $num_registre;

    }
}



