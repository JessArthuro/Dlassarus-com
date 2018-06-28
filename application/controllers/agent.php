<?php
	defined('BASEPATH') OR exit('No direct script access allowed');

	class Agent extends CI_Controller {

		public function __construct(){
			parent::__construct();
			$this->load->library('user_agent');
		}

		public function index(){
			if($this->agent->is_browser())
			{
				echo $this->agent->browser();
				echo "<br>";
				echo $this->agent->version();
			}
		}
	}
?>