<?php
class Mutasikeluar_model extends CI_Model
{
    //Koneksi Database tb_mutasikeluar dengan join table tb_instansi, tb_inventaris, tb_intsansi dan tb_ruangan
	public function get_data($id_barangkeluar='')
    {
        if ($id_barangkeluar==''){

            $query = $this->db->select('tb_mutasikeluar.*, tb_inventaris.*, tb_ruangan.nama_ruangan, tb_instansi.nama_instansi')
                                ->from('tb_mutasikeluar')
                                ->join('tb_instansi', 'tb_instansi.id_instansi = tb_mutasikeluar.id_instansi', 'left')
                                ->join('tb_inventaris', 'tb_inventaris.id_barang = tb_mutasikeluar.id_barang', 'left')
                                ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                                ->get()->result_array();
            return $query;

        }else {

            $query = $this->db->select('tb_mutasikeluar.*, tb_inventaris.*, tb_ruangan.nama_ruangan, tb_instansi.nama_instansi')
                                ->from('tb_mutasikeluar')
                                ->join('tb_instansi', 'tb_instansi.id_instansi = tb_mutasikeluar.id_instansi', 'left')
                                ->join('tb_inventaris', 'tb_inventaris.id_barang = tb_mutasikeluar.id_barang', 'left')
                                ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                                ->where(['tb_mutasikeluar.id_barangkeluar' => $id_barangkeluar])
                                ->get()->row_array();
            return $query;
        }
    }



    public function cari($tahun_anggaran)
    {
        $query = $this->db->select('tb_mutasikeluar.*, tb_inventaris.*, tb_ruangan.nama_ruangan, tb_instansi.nama_instansi')
                          ->from('tb_mutasikeluar')
                          ->join('tb_instansi', 'tb_instansi.id_instansi = tb_mutasikeluar.id_instansi', 'left')
                          ->join('tb_inventaris', 'tb_inventaris.id_barang = tb_mutasikeluar.id_barang', 'left')
                          ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                          ->like('tahun_anggaran', $tahun_anggaran)
                          ->get()->result_array();

        return $query;
    }

    public function get_data_byid($id_barangkeluar){
        $query = $this->db->select(
                                    'tb_mutasikeluar.*,
                                    tb_inventaris.id_barang,
                                    tb_inventaris.id_ruangan,
                                    tb_inventaris.nama_barang,
                                    tb_inventaris.merk,
                                    tb_inventaris.ukuran,
                                    tb_inventaris.keterangan,
                                    tb_instansi.nama_instansi,
                                    tb_ruangan.nama_ruangan')
                                ->from('tb_mutasikeluar')
                                ->join('tb_instansi', 'tb_instansi.id_instansi = tb_mutasikeluar.id_instansi', 'left')
                                ->join('tb_inventaris', 'tb_inventaris.id_barang = tb_mutasikeluar.id_barang', 'left')
                                ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                                ->where(['tb_mutasikeluar.id_barangkeluar' => $id_barangkeluar])
                                ->get()->row_array(); //->row_array() memanggil 1 data dengan array, cara panggil $namaVariable['nama_kolom_tabel']
            return $query;
    }


    public function update_data($id_barangkeluar){
        $dataInventaris = [
            'id_instansi'=> $this->input->post('id_instansi'),
            'tahun_anggaran'=> $this->input->post('tahun_anggaran')
        ];
        $this->db->update('tb_mutasikeluar', $dataInventaris, ['id_barangkeluar' => $id_barangkeluar]);
        if($this->db->affected_rows()>0){
            $this->session->set_flashdata("pesan", "Data instansi berhasil diperbaharui!");
        }
    }

    public function delete_data($id_barangkeluar, $id_barang)
    {
        $dataInventaris = [
            'status'=>'Unit Pelayanan Pendapatan Daerah Pelaihari'
        ];
        $this->db->update('tb_inventaris', $dataInventaris, ['id_barang' => $id_barang]);
        $this->db->delete('tb_mutasikeluar', ['id_barangkeluar' => $id_barangkeluar]);

        if($this->db->affected_rows() > 0)
            $this->session->set_flashdata("pesan", "Data ruangan berhasil dihapus!");
    }

}