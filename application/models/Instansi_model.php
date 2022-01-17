<?php
	class Instansi_model extends CI_Model{
		public function get_data(){
			return $this->db->get("tb_instansi")->result();
		}

		public function get_data_byid($id){
			return $this->db->get_where("tb_instansi", array('id_instansi'=>$id))->row();
		}

		public function insert_data(){
			$data = [
                'nama_instansi'=> $this->input->post('nama'),
				'kabupaten_kota'=> $this->input->post('kota')
			];
			$this->db->insert("tb_instansi", $data);
			if($this->db->affected_rows()>0){
				$this->session->set_flashdata("pesan", "Data instansi berhasil disimpan!");
			}
		}

		public function delete_data($id){
			$this->db->where('id_instansi', $id);
			$this->db->delete('tb_instansi');
			if($this->db->affected_rows()>0){
				$this->session->set_flashdata("pesan", "Data instansi berhasil dihapus!");
			}
		}

		public function update_data($id){
			$data = ['nama_instansi'=> $this->input->post('nama'),
			'kabupaten_kota'=> $this->input->post('kota')];
			$this->db->where('id_instansi', $id);
			$this->db->update('tb_instansi', $data);
			if($this->db->affected_rows()>0){
				$this->session->set_flashdata("pesan", "Data instansi berhasil diperbaharui!");
			}
		}

		public function cari($kabupaten_kota)
		{
			$query = $this->db->from('tb_instansi')
							  ->like('kabupaten_kota', $kabupaten_kota)
							  ->get()->result();

			return $query;
		}

	}
