<?php
require_once './libs/smarty-4.2.1/libs/Smarty.class.php';

class AutoView {
    private $smarty;

    public function __construct() {
        $this->smarty = new Smarty(); // inicializo Smarty
    }


    function showAutos($autos) {
        // asigno variables al tpl smarty
        $this->smarty->assign('count', count($autos)); 
        $this->smarty->assign('autos', $autos);

        // mostrar el tpl
        $this->smarty->display('autosList.tpl');
    }

    function editAuto($auto){
        $this->smarty->assign('auto', $auto);

        $this->smarty->display('form_edit_auto.tpl');
    }

    
}
?>