<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Categories_user extends CI_Controller
{
	
	public function sandal()
	{
		$data['title'] = 'Sandal Categories';
		$data['sandal'] = $this->model_kategori->sandal()->result();
		$this->load->view('layout/user/header', $data);
		$this->load->view('categories/sandal', $data);
		$this->load->view('layout/user/footer');
	}

	public function cosmetic()
	{
		$data['title'] = 'Cosmetic Categories';
		$data['cosmetic'] = $this->model_kategori->cosmetic()->result();
		$this->load->view('layout/user/header', $data);
		$this->load->view('categories/cosmetic', $data);
		$this->load->view('layout/user/footer');
	}

	public function flatshoes()
	{
		$data['title'] = 'Flat Shoes Categories';
		$data['flatshoes'] = $this->model_kategori->flatshoes()->result();
		$this->load->view('layout/user/header', $data);
		$this->load->view('categories/flatshoes', $data);
		$this->load->view('layout/user/footer');
	}

	public function Mules()
	{
		$data['title'] = 'Mules Categories';
		$data['Mules'] = $this->model_kategori->Mules()->result();
		$this->load->view('layout/user/header', $data);
		$this->load->view('categories/Mules', $data);
		$this->load->view('layout/user/footer');
	}
	
}
