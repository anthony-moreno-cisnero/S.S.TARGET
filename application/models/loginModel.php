<?php
	class loginModel extends CI_Model{
		
		function __construct(){
			parent::__construct();
			$this->load->database();
		}
		function checkLogin($email,$pass){

			$query = $this->db->query('SELECT nom1, nom2, ape1, ape2, email, stauser, iduser, rol FROM usuarios WHERE email=\''.$email.'\'AND pass=\''.$pass.'\'');

			if ($query->num_rows() > 0) {
				return $query;
			}else{
				return false;
			}
		}
	}
?>