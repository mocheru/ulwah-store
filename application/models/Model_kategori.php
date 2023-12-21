<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Model_kategori extends CI_Model
{

	public function sandal()
	{
		return $this->db->get_where('product', array('kategori' => 'Sandal'));
	}
 
	public function cosmetic()
	{
		return $this->db->get_where('product', array('kategori' => 'Cosmetic'));
	}

	public function flatshoes()
	{
		return $this->db->get_where('product', array('kategori' => 'flatshoes'));
	}

	public function Mules()
	{
		return $this->db->get_where('product', array('kategori' => 'Mules'));
	}
	
}
