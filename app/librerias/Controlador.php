<?php


//Clase Controlador Principal
//Se encargar de poder cargar los modelos y las vistas


class Controlador{
    //cargamos modelo
    public function modelo($modelo){
        //cargar
        require_once '../app/modelo/'. $modelo .'.php';
        //instanciar el modelo
        return new $modelo;
    }
    public function vista($vista, $datos = []){
        //chequeamos si el archivo vista existe
        if(file_exists('../app/vistas/'. $vista .'.php')){
            require_once '../app/vistas/'. $vista .'.php';
        }else{
            //si el archivo de la vista no existe
            die('la vista no existe');
        }
    }
}