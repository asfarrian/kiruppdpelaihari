<?php
	class Dashboard extends CI_Controller{
		function __construct()
		{
			parent::__construct();
			$this->load->model(array('dashboard_model', 'ruangan_model'));
		}

		public function index()
		{
			$data['dashboard']=$this->dashboard_model->lihat_dashboard_by_status('Unit Pelayanan Pendapatan Daerah Pelaihari');
			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('dashboard/view_data', $data);
			$this->load->view('template/footer');
		}


		public function ubah($id){
			if(isset($_POST['ubah'])){
				$this->dashboard_model->update_data($id);
				redirect('dashboard');
			}else{
				$data['dashboard'] = $this->dashboard_model->get_lihat_dashboard($id);
				$data['ruangan'] = $this->ruangan_model->get_data();
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('dashboard/update_data', $data);
				$this->load->view('template/footer');
			}
		}

	}
