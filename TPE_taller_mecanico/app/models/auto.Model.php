<?php

class AutoModel{

    private $db;

    public function __construct() {
        $this->db = new PDO('mysql:host=localhost;'.'dbname=db_taller_mecanico;charset=utf8mb4', 'root', '');
    }

    public function getTodosAutos() {
        $query = $this->db->prepare("SELECT * FROM `auto`");
        $query->execute();

        $autos = $query->fetchAll(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        return $autos;
    }

    public function getAutobyId($id) {
        $query = $this->db->prepare("SELECT * FROM `auto` WHERE `id_auto`=?");
        $query->execute([$id]);

        $auto = $query->fetch(PDO::FETCH_OBJ);
        return $auto;
    }

    public function insertAuto($patente, $duenio, $modelo) {
        $query = $this->db->prepare('INSERT INTO `auto`(`patente`, `duenio`, `modelo`) VALUES (?, ?, ?)');
        $query->execute([$patente, $duenio, $modelo]);

        return $this->db->lastInsertId();
    }

    public function deleteAutoById($id) {
        $query = $this->db->prepare('DELETE FROM `auto` WHERE `id_auto` = ?');
        $query->execute([$id]);
    }

    public function editAutoById($id) {
        $query = $this->db->prepare('SELECT * FROM `auto` WHERE `id_auto` = ?');
        $query->execute([$id]);

        $auto = $query->fetch(PDO::FETCH_OBJ); // devuelve un arreglo de objetos
        return $auto;
    }

    public function updateAutoById($id, $patente, $duenio, $modelo) {
        $query = $this->db->prepare('UPDATE `auto` SET `patente`= ? , `duenio`= ?, `modelo` = ? 
                                    WHERE `id_auto` = ? ');
        $query->execute([$patente,$duenio,$modelo,$id]);
    }

}

?>