<?php
	include_once(APPPATH.'controllers/Controller.php');
	class Users extends Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('users_model');
		}

		public function index()
		{//localhost/simon_pkl/dashboard
			$data['users']=$this->users_model->get_data();

			$this->template('users/view_data', $data);
		}

		public function tambah(){
			if(isset($_POST['simpan'])){
				$this->users_model->insert_data();
				redirect('users');
			}else{
                $data['users'] = $this->users_model->get_data();

				$this->template('users/insert_data', $data);
			}
		}

		public function ubah($id){
			if(isset($_POST['ubah'])){
				$this->ruangan_model->update_data($id);
				redirect('ruangan');
			}else{
				$data['ruangan'] = $this->ruangan_model->get_data_byid($id);

				$this->template('ruangan/update_data', $data);
			}
		}

		public function hapus($id_login){
			if(!isset($id_login)){
				redirect('users');
			}else{
				$this->users_model->delete_data($id_login);
				redirect('users');
			}
		}
	}