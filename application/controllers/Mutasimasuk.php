<?php
	include_once(APPPATH.'controllers/Controller.php');
	class Mutasimasuk extends Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model(array('mutasimasuk_model', 'dashboard_model', 'instansi_model', 'ruangan_model'));
		}

		public function index()
		{
			$tahun_anggaran = $this->input->get('tahun_anggaran', TRUE);

			if ($tahun_anggaran) {
				$data['mutasimasuk'] = $this->mutasimasuk_model->cari($tahun_anggaran);
				$data['selected_mutasi_masuk'] = $tahun_anggaran;
			} else {
				$data['mutasimasuk']=$this->mutasimasuk_model->get_data();
			}

			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('mutasimasuk/view_data', $data);
			$this->load->view('template/footer');
		}

		public function tambah()
		{
			if(isset($_POST['simpan'])){
				$this->mutasimasuk_model->insert_data();
				redirect('mutasimasuk');
			}else{
                $data['dashboard'] = $this->dashboard_model->get_data();
				$data['instansi'] = $this->instansi_model->get_data();
				$data['ruangan'] = $this->ruangan_model->get_data();

				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('mutasimasuk/insert_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function ubah($id_barangmasuk, $id_barang)
		{
			if(isset($_POST['ubah'])){
				$this->mutasimasuk_model->update_data($id_barangmasuk, $id_barang);
				redirect('mutasimasuk');
			}else{
				$data['mutasimasuk'] = $this->mutasimasuk_model->get_data_byid($id_barangmasuk);
				$data['instansi'] = $this->instansi_model->get_data();
				$data['ruangan'] = $this->ruangan_model->get_data();
				$data['tahun'] = [2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030];

				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('mutasimasuk/update_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function hapus($id_barangmasuk, $id_barang)
		{
			$this->mutasimasuk_model->delete_data($id_barangmasuk, $id_barang);

			redirect('mutasimasuk');
		}
	}
