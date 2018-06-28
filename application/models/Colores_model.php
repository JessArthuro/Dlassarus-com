<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Colores_model extends CI_Model {

	public function getColores(){
		$this->db->where("estado", "1");
		$resultados = $this->db->get("colores");
		return $resultados->result();
	}

}