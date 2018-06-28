<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Dashboard extends CI_Controller {

	public function __construct(){
		parent::__construct();
		if (!$this->session->userdata("login")) {
		 	redirect(base_url());
		 }
	}

	public function index()
	{
		$data = array(
			'cantVentas' => $this->Backend_model->rowCount("ventas"),
			 'cantUsuarios' => $this->Backend_model->rowCount("usuarios"),
			 'cantCategorias' => $this->Backend_model->rowCount("categorias"),
			 'cantProductos' => $this->Backend_model->rowCount("productos"),
		);	
		$this->load->view('layouts/header');
		$this->load->view('layouts/aside');
		$this->load->view('admin/dashboard', $data);
		$this->load->view('layouts/footer');

	}

	public function graficar()
  {
    $this->load->helper('url');
    $this->load->view('admin/graficar');

  }

  public function get_graficar(){
$this->load->model('graficar_model');
$result = $this->graficar_model->get_graficar();
echo json_encode($result);
}

}