<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Auth extends CI_Controller {
	
	public function __construct(){
		parent::__construct();
		$this->load->library('user_agent');
		$this->load->model("Usuarios_model");
		$this->load->model("Iptracker");
		
	}

	public function index()
	{
	

		
		$this->load->database();
		if ($this->session->userdata("login")) {
		 	redirect(base_url()."dashboard");
		 }
		 else{
		 	$this->load->view('admin/login');

		 } 
		
	}

	public function login(){
		$username = $this->input->post("username");
		$password = $this->input->post("password");
		$res = $this->Usuarios_model->login($username, ($password));

		if (!$res) {
			$this->session->set_flashdata("error", "El usuarios y/o contraseña son incorrectos");
			redirect(base_url());
		}
		else{
			$data = array(
				'id' => $res->id,
				'nombre' => $res->nombre,
				'paterno' => $res->paterno,
				'materno' => $res->materno,
				'rol' => $res->rol_id,
				'login' => TRUE 
			);
			$this->session->set_userdata($data);
			redirect(base_url()."dashboard");
		}
	}

	public function logout(){
		$this->session->sess_destroy();
		redirect(base_url());
	}
}

