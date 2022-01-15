<?php
	class Ruangan extends CI_Controller{
		function __construct()
		{
			parent::__construct();
			$this->load->model('ruangan_model');
		}

		public function index(){//localhost/simon_pkl/dashboard
			$data['ruangan']=$this->ruangan_model->get_data();
			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('ruangan/view_data', $data);
			$this->load->view('template/footer');
		}

		public function tambah(){
			if(isset($_POST['simpan'])){
				$this->ruangan_model->insert_data();
				redirect('ruangan');
			}else{
                $data['ruangan'] = $this->ruangan_model->get_data();
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('ruangan/insert_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function ubah($id){
			if(isset($_POST['ubah'])){
				$this->ruangan_model->update_data($id);
				redirect('ruangan');
			}else{
				$data['ruangan'] = $this->ruangan_model->get_data_byid($id);
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('ruangan/update_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function hapus($id){
			if(!isset($id)){
				redirect('ruangan');
			}else{
				$this->ruangan_model->delete_data($id);
				redirect('ruangan');
			}
		}
		
	}
