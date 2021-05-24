<?php
defined('BASEPATH') OR exit('No direct script access allowed');
date_default_timezone_set('America/Santiago');

class Dashboard extends CI_Controller {

	function __construct(){
		parent::__construct();
		$this->load->library('form_validation');
		$this->load->library('session');
		$this->load->model('dashboardModel');

	}
	public function index(){
		$data = array('titulo'=>'Dashboard');
		$this->load->view('dashboard',$data);
	}
	public function estacionamiento(){
		$data = array('titulo'=>'Estacionamiento');
		$this->load->view('estacionamiento',$data);
	}
	public function administracion(){
		$data = array('titulo'=>'Administración');
		$this->load->view('administracion',$data);
	}
	public function getDatingveh(){
		if ($this->input->is_ajax_request()) {
			$field ='codemp, nomemp, rutemp, empres, patent, horing, horsal';
			$table = 'datingveh';
			$id = 'sta = 1'; 
			$result = $this->dashboardModel->getDash($field,$table,$id);
			echo json_encode($result);
		}else{
			show_404();
			//Hacer una web de error
		}
	}
	public function likeFiltro(){
		if ($this->input->is_ajax_request()) {
			// $table = 'datingveh';
			$data = ucwords($this->input->post('a'));
			$like1 = 'nomemp';
			$like2 = 'codemp::varchar(50)';
			$field ='codemp, nomemp, rutemp, empres, patent, horing, horsal';
			$table = 'datingveh';
			$id = 'sta = 1'; 
			$result = $this->dashboardModel->likeDash($field,$table,$data,$id,$like1,$like2);
			echo json_encode($result);
		}else{
			show_404();
			//Hacer una web de error
		}
	}
	public function regSalida(){
		if ($this->input->is_ajax_request()) {
			$data = array('horsal'=>date("H:i:s"),'fecsal'=>date("d/m/Y"));
			$id = $this->input->post('id');
			$table = 'datingveh';
			$field = 'codemp';
			$result = $this->dashboardModel->updateDash($table,$data,$id,$field);
			echo json_encode($result);
		}else{
			show_404();
			//Hacer una web de error
		}
	}
	public function getatemp(){
		if ($this->input->is_ajax_request()) {
			$id = 'cod = '.$this->input->post('id');
			$table = 'dataemp';
			$field = 'cod, nom1, ape1, rut, pat, sta';
			$result = $this->dashboardModel->getDash($field,$table,$id);
			echo json_encode($result);
		}else{
			show_404();
			//Hacer una web de error
		}
	}
	public function getEmpresas(){
		if ($this->input->is_ajax_request()) {
			$id = 'codpar = 2';
			$table = 'detpar';
			$field = 'coddetpar, detpar';
			$result = $this->dashboardModel->getDash($field,$table,$id);
			echo json_encode($result);
		}else{
			show_404();
			//Hacer una web de error
		}
	}
	public function validaReg(){
		if ($this->input->is_ajax_request()) {
		
		$field	= 'nomemp, fecing, horing';
		$table = 'datingveh';
		$id = 'rutemp = '.$this->input->post('rut');
			$result = $this->dashboardModel->selectDash($field,$table,$id);
			echo json_encode($result);
		}else{
			show_404();
			//Hacer una web de error
		}
	}
}