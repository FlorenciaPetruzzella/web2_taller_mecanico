<?php
require_once './app/controllers/auto.Controller.php';
require_once './app/controllers/service.Controller.php';
require_once './app/controllers/auth.Controller.php';
require_once './app/controllers/section.Controller.php';


define('BASE_URL', '//'.$_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']).'/');

$action = 'home'; 
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}

$params = explode('/', $action);


switch ($params[0]) {
    case 'home':
        $sectionController = new SectionController();
        $sectionController->showHome();
        break;
    case 'login':
        $authController = new AuthController();
        $authController->showFormLogin();
        break;
    case 'logout':
        $authController = new AuthController();
        $authController->logout();
        break;
    case 'validate':
        $authController = new AuthController();
        $authController->validateUser();
        break;    
    case 'listAutos':
        $autoController = new AutoController();
        $autoController->showAutos();
        break;
    case 'listServices':
        $serviceController = new ServiceController();
        $serviceController->showServices();
        break;    
    case 'add':   
        $autoController = new AutoController();            
        $autoController->addAuto();
        break;
    case 'addService':
        $serviceController = new ServiceController();
        $id = $params[1];
        $serviceController->addService($id);
        break;
    case 'delete':     
        $autoController = new AutoController();       
        $id = $params[1];
        $autoController->deleteAuto($id);
        break;
    case 'deleteService': 
        $serviceController = new ServiceController();           
        $id = $params[1];
        $id_auto = $params[2];
        $serviceController->deleteService($id, $id_auto);
        break;
    case 'deleteServiceList': 
        $serviceController = new ServiceController();           
        $id = $params[1];
        $id_auto = $params[2];
        $serviceController->deleteServiceList($id, $id_auto);
        break;
    case 'editAuto':  
        $autoController = new AutoController();        
        $id = $params[1];
        $autoController->editAuto($id);
        break;
    case 'editService':  
        $serviceController = new ServiceController();        
        $id = $params[1];
        $serviceController->editService($id);
        break;
    case 'updateAuto':   
        $autoController = new AutoController();          
        $id = $params[1];
        $autoController->updateAuto($id);
        break;
    case 'updateService':   
        $serviceController = new ServiceController();          
        $id = $params[1];
        $id_auto = $params[2];
        $serviceController->updateService($id, $id_auto);
        break;
    case 'showServices':  
        $serviceController = new ServiceController();      
        $id = $params[1];
        $serviceController->showServicesById($id);
        break;
    default:
        echo('404 Page not found');
        break;
}

?>