<?php

class ServiceModel{

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_taller_mecanico;charset=utf8mb4', 'root', '');
    }

    public function getServices($id) {
        $query = $this->db->prepare("SELECT * FROM `service` WHERE `id_auto`=?");
        $query->execute([$id]);

        $services = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        return $services;
    }

    public function insertService($id, $fecha, $km, $km_prox_service, $gastos_repuestos, $gastos_mo, $descripcion){
        $query = $this->db->prepare("INSERT INTO `service`(`id_auto`, `fecha`, `km`,`km_prox_service`,
                                    `gastos_repuestos`,`gastos_mo`,`descripcion`) VALUES (?, ?, ?, ?, ?, ?, ?)");
        $query->execute([$id, $fecha, $km, $km_prox_service, $gastos_repuestos, $gastos_mo, $descripcion]);
        return $this->db->lastInsertId();
    } 

    public function deleteServiceById($id){
        $query = $this->db->prepare('DELETE FROM `service` WHERE `id_service` = ?');
        $query->execute([$id]);
    }

    public function getId_auto($id){
        $query = $this->db->prepare('SELECT `id_auto` FROM `service` WHERE `id_service` = ?');
        $query->execute([$id]);

        $query->fetch(PDO::FETCH_NUM); // devuelve un arreglo de objetos
        return $query;
    }


    function editServiceById($id) {
        $query = $this->db->prepare("SELECT * FROM `service` WHERE `id_service` = ?");
        $query->execute([$id]);

        $service = $query->fetch(PDO::FETCH_OBJ);
        return $service;
    }

    function editServiceByIdList($id) {
        $query = $this->db->prepare("SELECT A. *, B. * FROM `auto` A INNER JOIN `service` B ON A.id_auto = B.id_auto");
        $query->execute([$id]);

        $services = $query->fetch(PDO::FETCH_OBJ);
        return $services;
    }

    
    function updateServiceById($id, $fecha, $km, $km_prox_service, $gastos_repuestos, $gastos_mo, $descripcion) {
        $query = $this->db->prepare("UPDATE `service` SET `fecha`= ? ,`km`= ?, `km_prox_service`= ?,
                                    `gastos_repuestos`= ? ,`gastos_mo`= ? ,`descripcion`= ? 
                                    WHERE `id_service` = ? ");
        $query->execute([$fecha, $km, $km_prox_service, $gastos_repuestos, $gastos_mo, $descripcion,$id]);
    }

    function getServicesAutos(){
        $query = $this->db->prepare("SELECT A. *, B. * FROM `auto` A INNER JOIN `service` B ON A.id_auto = B.id_auto");
        $query->execute();

        $allServices = $query->fetchAll(PDO::FETCH_OBJ); 
        return $allServices;
    }
}
