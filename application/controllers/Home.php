<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Home extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
	}
	public function index(){
		$data = array('titulo'=>'S.S.TARGET');
		$this->load->view('welcome',$data);
	}
}
