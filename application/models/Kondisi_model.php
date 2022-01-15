<?php
	class Kondisi_model extends CI_Model{
		public function get_data(){
            return $this->db->get("tb_kondisi")->result();
		}

		public function get_data_byid($id){
			return $this->db->get_where("tb_kondisi", array('id_kondisi'=>$id))->row();
		}
    }
