<?php
	include_once(APPPATH.'controllers/Controller.php');
	class Login extends Controller
	{
		function __construct()
		{
			parent::__construct();
			$this->load->model('ruangan_model');
		}

		public function index()
		{//localhost/simon_pkl/dashboard
			$this->load->view('template/sidebarlogin');
            $this->load->view('template/headerlogin');
            $this->load->view('login/view_data');
            $this->load->view('template/footerlogin');
		}

	}
