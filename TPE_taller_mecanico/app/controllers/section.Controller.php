<?php
require_once './app/views/section.View.php';

class SectionController {
    private $view;

    public function __construct() {
        $this->view = new SectionView();

    }
    public function showHome() {
        session_start();
        $this->view->showHome();
    }

}

