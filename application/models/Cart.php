<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Cart extends CI_Model {

	
	public function get_categories_home()
	{
		
		
		$this->db->limit(8);
		$query=$this->db->get('categories');
		$result=$query->result_array();
		
		return $result;
	}
	

	public function updateOrder($data)
	{
		
		
		$this->db->where('id',$data['id']);
		return $this->db->update('orders',$data);
	}
}