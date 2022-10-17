<?php

require_once './app/models/service.Model.php';
require_once './app/views/service.View.php';
require_once './app/models/auto.Model.php';
require_once './app/helpers/auth.Helper.php';


class ServiceController {
    private $model;
    private $modelAuto;
    private $view;
    private $authHelper;

    public function __construct() {
        $this->model = new ServiceModel();
        $this->modelAuto = new AutoModel();
        $this->view = new ServiceView();
        $this->authHelper = new AuthHelper();
    }

    public function showServicesById($id) {
        session_start();
        $services = $this->model->getServices($id);
        $auto = $this->modelAuto->getAutobyId($id);
        $this->view->showServicesById($services,$auto,$id);
    }

    public function showServices() {
        session_start();
        $allServices = $this->model->getServicesAutos();
        $this->view->showServices($allServices);
    }
    
    public function addService($id) {
        if (isset($_POST['fecha']) && isset($_POST['km']) && isset($_POST['km_prox_service']) &&
            isset($_POST['gastos_repuestos']) && isset($_POST['gastos_mo']) && isset($_POST['descripcion']) &&
            !empty($_POST['fecha']) && !empty($_POST['km']) && !empty($_POST['km_prox_service']) &&
            !empty($_POST['gastos_repuestos']) && !empty($_POST['gastos_mo']) && !empty($_POST['descripcion'])) {
            $this->authHelper->checkLoggedIn();

        $fecha = $_POST['fecha'];
        $km = $_POST['km'];
        $km_prox_service = $_POST['km_prox_service'];
        $gastos_repuestos = $_POST['gastos_repuestos'];
        $gastos_mo = $_POST['gastos_mo'];
        $descripcion = $_POST['descripcion'];

        $this->model->insertService($id, $fecha, $km, $km_prox_service, $gastos_repuestos, $gastos_mo, $descripcion); 
        header("Location: " . BASE_URL . 'showServices/' . $id); 
        }

        else{
            var_dump("Complete todos los campos");
            die();
        }
    }

    public function deleteService($id, $id_auto) {
        $this->model->deleteServiceById($id);

        header("Location: " . BASE_URL . 'showServices/' .$id_auto); 
    }

    public function deleteServiceList($id, $id_auto) {
        $this->model->deleteServiceById($id);

        header("Location: " . BASE_URL . 'listServices'); 
    }


    public function editService($id) {
        session_start();
        $service = $this->model->editServiceById($id);
        $this->view->editService($service);
    }


    public function updateService($id, $id_auto) {
        if (isset($_POST['fecha']) && isset($_POST['km']) && isset($_POST['km_prox_service']) &&
        isset($_POST['gastos_repuestos']) && isset($_POST['gastos_mo']) && isset($_POST['descripcion'])) {
        $this->authHelper->checkLoggedIn();

        $fecha = $_POST['fecha'];
        $km = $_POST['km'];
        $km_prox_service = $_POST['km_prox_service'];
        $gastos_repuestos = $_POST['gastos_repuestos'];
        $gastos_mo = $_POST['gastos_mo'];
        $descripcion = $_POST['descripcion'];

        $this->model->updateServiceById($id, $fecha, $km, $km_prox_service, $gastos_repuestos, $gastos_mo, $descripcion);
        
        header("Location: " . BASE_URL . 'showServices/' .$id_auto);  
        }
    }
}


?>