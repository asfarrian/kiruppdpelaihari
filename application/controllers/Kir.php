<?php
	class Kir extends CI_Controller{
		function __construct()
		{
			parent::__construct();
			$this->load->model(array('kir_model', 'ruangan_model'));
		}

		public function index()
		{//localhost/simon_pkl/kir
			$ruangan = $this->input->get('ruangan', TRUE);

			if ($ruangan) {
				$data['kir'] = $this->kir_model->cari($ruangan);
				$data['selected_ruangan'] = $ruangan;
			} else {
				$data['kir']=$this->kir_model->get_lihat_kir();
			}

			$data['ruangan'] = $this->ruangan_model->get_data();
			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('kir/view_data', $data);
			$this->load->view('template/footer');
		}


		public function ubah($id){
			if(isset($_POST['ubah'])){
				$this->kir_model->update_data($id);
				redirect('kir');
			}else{
				$data['kir'] = $this->kir_model->get_lihat_kir($id);
				$data['ruangan'] = $this->ruangan_model->get_data();
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('kir/update_data', $data);
				$this->load->view('template/footer');
			}
		}

		// public function cari()
		// {
		// 	$ruangan = $this->input->get('ruangan', TRUE);

		// 	$data['kir'] = $this->kir_model->cari($ruangan);
		// 	$data['ruangan'] = $this->ruangan_model->get_data();

		// 	echo '<pre>';
		// 	var_dump($data);
		// 	echo '</pre>';
		// 	die;

		// 	$this->load->view('template/sidebar');
		// 	$this->load->view('template/header');
		// 	$this->load->view('kir/view_data_filter', $data);
		// 	$this->load->view('template/footer');
		// }

	}
