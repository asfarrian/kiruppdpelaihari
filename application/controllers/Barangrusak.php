<?php
	include_once(APPPATH.'controllers/Controller.php');
	class Barangrusak extends Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model(array('barangrusak_model', 'ruangan_model'));
		}

		public function index()
		{
			$data['barangrusak']=$this->barangrusak_model->lihat_barangrusak_by_kondisi('Rusak Berat');
			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('barangrusak/view_data', $data);
			$this->load->view('template/footer');
		}


		public function ubah($id){
			if(isset($_POST['ubah'])){
				$this->barangrusak_model->update_data($id);
				redirect('barangrusak');
			}else{
				$data['barangrusak'] = $this->barangrusak_model->lihat_barangrusak_by_kondisi($id);
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('barangrusak/update_data', $data);
				$this->load->view('template/footer');
			}
		}

	}
