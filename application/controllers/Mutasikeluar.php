<?php
	include_once(APPPATH.'controllers/Controller.php');
	class Mutasikeluar extends Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model(array('mutasikeluar_model', 'dashboard_model', 'instansi_model', 'ruangan_model'));
		}

		public function index()
		{
			$tahun_anggaran = $this->input->get('tahun_anggaran', TRUE);

			if ($tahun_anggaran) {
				$data['mutasikeluar'] = $this->mutasikeluar_model->cari($tahun_anggaran);
				$data['selected_mutasi_keluar'] = $tahun_anggaran;
			} else {
				$data['mutasikeluar']=$this->mutasikeluar_model->get_data();
			}

			$this->load->view('template/sidebar');
			$this->load->view('template/header');
			$this->load->view('mutasikeluar/view_data', $data);
			$this->load->view('template/footer');
		}

		public function ubah($id_barangkeluar)
		{
			if(isset($_POST['edit'])){
				$this->mutasikeluar_model->update_data($id_barangkeluar);
				redirect('mutasikeluar');
			}else{
				$data['mutasikeluar'] = $this->mutasikeluar_model->get_data_byid($id_barangkeluar);
				$data['instansi'] = $this->instansi_model->get_data();
				$data['tahun'] = [2021, 2022, 2023, 2024, 2025, 2026, 2027, 2028, 2029, 2030];

				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('mutasikeluar/update_data', $data);
				$this->load->view('template/footer');
			}
		}

		public function hapus($id_barangkeluar, $id_barang)
		{
			$this->mutasikeluar_model->delete_data($id_barangkeluar, $id_barang);

			redirect('mutasikeluar');
		}

		public function laporan_pdf()
		{
			{
				$tahun_anggaran = $this->input->get('tahun_anggaran', TRUE);
	
				if ($tahun_anggaran) {
					$data['mutasikeluar'] = $this->mutasikeluar_model->cari($tahun_anggaran);
					$data['selected_mutasi_masuk'] = $tahun_anggaran;
				} else {
					$data['mutasikeluar']=$this->mutasikeluar_model->get_data();
				}
			$this->load->library('pdf');
			$this->pdf->setPaper('Folio', 'potrait');
			$this->pdf->filename = "laporan-mutasikeluar.pdf";
			$this->pdf->load_view('mutasikeluar/laporan_pdf', $data);
		}
	}

    }