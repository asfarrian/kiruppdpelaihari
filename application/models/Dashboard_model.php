<?php
class Dashboard_model extends CI_Model
{
	public function lihat_dashboard($id_barang='')
    {
        if ($id_barang==''){
            // return $this->db->query("SELECT tb_inventaris.id_barang, tb_inventaris.kode_barang,tb_inventaris.nama_barang,tb_inventaris.merk,tb_inventaris.nomor_registrasi,tb_inventaris.ukuran,tb_inventaris.bahan,tb_inventaris.tahun_pembelian,tb_inventaris.asal_usul,tb_inventaris.kondisi,tb_inventaris.harga,tb_inventaris.keterangan,tb_ruangan.id_ruangan,tb_ruangan.nama_ruangan FROM tb_ruangan join tb_inventaris ON tb_ruangan.id_ruangan=tb_inventaris.id_ruangan")->result_array();

            $query = $this->db->select('tb_inventaris.*, tb_ruangan.nama_ruangan')
                                ->from('tb_inventaris')
                                ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                                ->get()->result_array();
            return $query;

        }else {
            // return $this->db->query("SELECT tb_inventaris.id_barang, tb_inventaris.kode_barang,tb_inventaris.nama_barang,tb_inventaris.merk,tb_inventaris.nomor_registrasi,tb_inventaris.ukuran,tb_inventaris.bahan,tb_inventaris.tahun_pembelian,tb_inventaris.asal_usul,tb_inventaris.kondisi,tb_inventaris.harga,tb_inventaris.keterangan,tb_ruangan.id_ruangan,tb_ruangan.nama_ruangan FROM tb_ruangan join tb_inventaris ON tb_ruangan.id_ruangan=tb_inventaris.id_ruangan where id_barang='$id_barang'")->row_array();

            $query = $this->db->select('tb_inventaris.*, tb_ruangan.nama_ruangan')
                                ->from('tb_inventaris')
                                ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                                ->where(['tb_inventaris.id_barang' => $id_barang])
                                ->get()->row_array();
            return $query;
        }
    }

	public function get_lihat_dashboard($id_barang='')
    {
        if ($id_barang==''){
            return $this->db->query("SELECT tb_inventaris.id_barang, tb_inventaris.kode_barang,tb_inventaris.nama_barang,tb_inventaris.merk,tb_inventaris.nomor_registrasi,tb_inventaris.ukuran,tb_inventaris.bahan,tb_inventaris.tahun_pembelian,tb_inventaris.asal_usul,tb_inventaris.kondisi,tb_inventaris.harga,tb_inventaris.keterangan,tb_ruangan.id_ruangan,tb_ruangan.nama_ruangan FROM tb_ruangan join tb_inventaris ON tb_ruangan.id_ruangan=tb_inventaris.id_ruangan")->result_array();
        }else {
            return $this->db->query("SELECT tb_inventaris.id_barang, tb_inventaris.kode_barang,tb_inventaris.nama_barang,tb_inventaris.merk,tb_inventaris.nomor_registrasi,tb_inventaris.ukuran,tb_inventaris.bahan,tb_inventaris.tahun_pembelian,tb_inventaris.asal_usul,tb_inventaris.kondisi,tb_inventaris.harga,tb_inventaris.keterangan,tb_ruangan.id_ruangan,tb_ruangan.nama_ruangan FROM tb_ruangan join tb_inventaris ON tb_ruangan.id_ruangan=tb_inventaris.id_ruangan where id_barang='$id_barang'")->row_array();
        }
    }

    public function lihat_dashboard_by_tahun($tahun)
    {
        $query = $this->db->select('*')
                            ->from('tb_inventaris')
                            ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                            ->where(['tb_inventaris.tahun_pembelian' => $tahun])
                            ->get()->result_array();

        return $query;
    }

	public function update_data($id)
    {
		$data = ['kode_barang'=> $this->input->post('kode_barang')];
        $data = ['nama_barang'=> $this->input->post('nama_barang')];
        $data = ['merk'=> $this->input->post('merk')];
        $data = ['nomor_registrasi'=> $this->input->post('nomor_registrasi')];
        $data = ['ukuran'=> $this->input->post('ukuran')];
        $data = ['bahan'=> $this->input->post('bahan')];
        $data = ['tahun_pembelian'=> $this->input->post('tahun_pembelian')];
        $data = ['asal_usul'=> $this->input->post('asal_usul')];
        $data = ['kondisi'=> $this->input->post('kondisi')];
        $data = ['harga'=> $this->input->post('harga')];
        $data = ['keterangan'=> $this->input->post('keterangan')];
        $data = ['id_ruangan'=> $this->input->post('ruangan')];
		$this->db->where('id_barang', $id);
		$this->db->update('tb_inventaris', $data);
		if($this->db->affected_rows()>0){
			$this->session->set_flashdata("pesan", "Data ruangan berhasil diperbaharui!");
		}
	}

    public function contoh()
    {
        // $query = $this->db->select('tb_inventaris.*, tb_ruangan.ruangan, tb_kondisi.kondisi')
        //                     ->from('tb_inventaris')
        //                     ->join('tb_ruangan', 'tb_ruangan.id = tb_inventaris.id_ruangan', 'left')
        //                     ->join('tb_kondisi', 'tb_kondisi.id = tb_inventaris.id_kondisi', 'left')
        //                     ->get()->result();

        // return $query;

        // $query = $this->db->select('tb_inventaris.*, tb_ruangan.ruangan, tb_kondisi.kondisi')
        //                     ->from('tb_inventaris')
        //                     ->join('tb_ruangan', 'tb_ruangan.id = tb_inventaris.id_ruangan', 'left')
        //                     ->join('tb_kondisi', 'tb_kondisi.id = tb_ruangan.id_kondisi', 'left')
        //                     ->get()->result();

        // return $query;

        // result() ====> $data->ruangan
        // result_array() ======> $data['ruangan']
    }

}
