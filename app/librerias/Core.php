<?php 
// 
// Mapeamos la url ingresada en el navegador
// 1-controlador
// 2-metodos
// 3-parametros
// 

class Core {

    protected $controladorActual = 'paginas';
    protected $metodoActual = 'index';
    protected $parametros = [];
   //constructor
    public function __construct(){
        $url = $this->getUrl();

        // print_r($this->getUrl());
  //buscar en controladores si el controlador existe
        if(file_exists('../app/controladores/'.ucwords($url[0]).'.php')){

            //si exites se setea como contolador por defecto
            $this->controladorActual = ucwords($url[0]); 

            //unset indice
            unset($url[0]);

        }



        
        //requerir el  controlador nuevo
        require_once '../app/controladores/'. $this->controladorActual.'.php';
        $this->controladorActual =   new $this->controladorActual;

        

//verificar la segunda parte del url que seria el metodo

if(isset($url[1])){

    if(method_exists($this->controladorActual, $url[1])){
       //chequeamos el methodo
       $this->metodoActual = $url[1];
      
       //unset indeice
       unset($url[1]);

    }
}

//para probar el methodo
// echo $this ->metodoActual;

// obtener los parametros
$this ->parametros =$url ? array_values($url) : [];
//llamar callback con parametros array
call_user_func_array([$this->controladorActual, $this->metodoActual],$this->parametros); 

    }

    public function getUrl(){

        // echo $_GET['url'];

        if(isset($_GET['url']))
        {
            $url =rtrim($_GET['url'], '/');
            $url =filter_var($url, FILTER_SANITIZE_URL);
            $url =explode('/', $url);
            return $url; 
        }
    }

}
