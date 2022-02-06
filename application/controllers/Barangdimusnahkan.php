<?php
	include_once(APPPATH.'controllers/Controller.php');
	class Barangdimusnahkan extends Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model(array('barangdimusnahkan_model', 'ruangan_model', 'instansi_model'));
		}

		public function index()
		{
			$data['barangdimusnahkan']=$this->barangdimusnahkan_model->lihat_barangdimusnahkan_by_status('Barang Telah Dimusnahkan');

			$this->template('barangdimusnahkan/view_data', $data);
		}

		public function hapus($id_barang)
		{
			$this->usulpemusnahan_model->delete_data($id_barang);

			redirect('usulpemusnahan');
		}

        public function ubah($id_barang)
		{
			if(isset($_POST['edit'])){
				$this->usulpemusnahan_model->move_data($id_barang);
				redirect('usulpemusnahan');
			}else{
				$data['usulpemusnahan'] = $this->usulpemusnahan_model->get_data($id_barang);
				$this->load->view('template/sidebar');
				$this->load->view('template/header');
				$this->load->view('usulpemusnahan/move_data', $data);
				$this->load->view('template/footer');
			}
		}


		public function laporan_pdf()
		{
			$data['usulpemusnahan']=$this->usulpemusnahan_model->lihat_usulpemusnahan_by_status('Usul Pemusnahan');
			$this->load->library('pdf');
			$this->pdf->setPaper('Folio', 'landscape');
			$this->pdf->filename = "UsulPemusnahan-UPPD PLH.pdf";
			$this->pdf->load_view('usulpemusnahan/laporan_pdf', $data);
		}

	}
