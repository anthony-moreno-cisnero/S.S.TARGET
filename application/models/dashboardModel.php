<?php
	class dashboardModel extends CI_Model{
		
		function __construct(){
			parent::__construct();
			$this->load->database();
		}
		# VARIABLES ----------------------------------
		# $data = Datos enviados por el usuario
		# $table = Tablas para trabajar
		# $field = Campos de la tabla
		# $id = id enviados por el usuario
		# EJEMPLOS -----------------------------------
		# SELECT $field From $table WHERE iduser = $id;
		# INSERT INTO $table ($field) VALUES ($data); 

		function updateDash($table,$data,$id,$field){

			$this->db->where($field,$id);
			$query = $this->db->update($table,$data);
			if ($query) {
				return true;
			}else{
				return false;
			}
		}
		function selectDash(){

		}
		function getDash($field,$table,$id){
			$this->db->select($field);
			$this->db->where($id);
			$query = $this->db->get($table);
			if ($query->num_rows() > 0) {
				return $query->result();
			}else{
				return false;
			}
		}
		function deleteDash(){

		}
		function insertDash(){

		}
		function likeDash($field,$table,$data,$id,$like1,$like2){
			$this->db->select($field);
			$this->db->like($like1, $data, 'BOTH');
			$this->db->or_like($like2, $data, 'BOTH');
			$this->db->where($id);
			$query = $this->db->get($table);
			if ($query->num_rows() > 0) {
				return $query->result();
			}else{
				return false;
			}
		}
		function queryDash(){

		}
	}