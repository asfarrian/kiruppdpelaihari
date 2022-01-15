<?php
	class Instansi extends CI_Controller{
		function __construct()
		{
			parent::__construct();
			$this->load->model('instansi_model');
		}

		public function index(){//localhost/simon_pkl/dashboard
			$data['instansi']=$this->instansi_model->get_data();
			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('instansi/view_data', $data);
			$this->load->view('template/footer');
		}

		public function tambah(){
			if(isset($_POST['simpan'])){
				$this->instansi_model->insert_data();
				redirect('instansi');
			}else{
                $data['instansi'] = $this->instansi_model->get_data();
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('instansi/insert_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function ubah($id){
			if(isset($_POST['ubah'])){
				$this->instansi_model->update_data($id);
				redirect('instansi');
			}else{
				$data['instansi'] = $this->instansi_model->get_data_byid($id);
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('instansi/update_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function hapus($id){
			if(!isset($id)){
				redirect('instansi');
			}else{
				$this->instansi_model->delete_data($id);
				redirect('instansi');
			}
		}
		
	}