<?php
class Users_model extends CI_Model
{
    //Koneksi Database tb_mutasimasuk dengan join table tb_instansi, tb_inventaris, tb_intsansi dan tb_ruangan
	public function get_data($id_barangmasuk='')
    {
        if ($id_barangmasuk==''){

            $query = $this->db->select('tb_login.*')
                                ->from('tb_login')
                                ->get()->result_array();
            return $query;

        }else {

            $query = $this->db->select('tb_login.*')
                                ->from('tb_login')
                                ->get()->row_array();
            return $query;
        }
    }

    public function get_data_byid($id){
        $query = $this->db->select(
                                    'tb_mutasimasuk.*,

                                    tb_inventaris.id_barang,
                                    tb_inventaris.id_ruangan,
                                    tb_inventaris.nama_barang,
                                    tb_inventaris.merk,
                                    tb_inventaris.ukuran,
                                    tb_inventaris.keterangan,
                                    tb_instansi.nama_instansi,
                                    tb_ruangan.nama_ruangan,
                                    tb_tahunanggaran.*')
                                ->from('tb_mutasimasuk')
                                ->join('tb_instansi', 'tb_instansi.id_instansi = tb_mutasimasuk.id_instansi', 'left')
                                ->join('tb_inventaris', 'tb_inventaris.id_barang = tb_mutasimasuk.id_barang', 'left')
                                ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
                                ->join('tb_tahunanggaran', 'tb_tahunanggaran.id_tahun = tb_mutasimasuk.id_tahun', 'left')
                                ->where(['tb_mutasimasuk.id_barangmasuk' => $id])
                                ->get()->row_array(); //->row_array() memanggil 1 data dengan array, cara panggil $namaVariable['nama_kolom_tabel']
            return $query;
    }

   
    public function cari($id_tahun)
    {
        $query = $this->db->select('tb_mutasimasuk.*, tb_inventaris.id_barang, tb_inventaris.nama_barang, 
        tb_inventaris.merk, tb_inventaris.ukuran, tb_instansi.nama_instansi,
        tb_inventaris.keterangan, tb_ruangan.nama_ruangan, tb_tahunanggaran.*')
        ->from('tb_mutasimasuk')
        ->join('tb_instansi', 'tb_instansi.id_instansi = tb_mutasimasuk.id_instansi', 'left')
        ->join('tb_inventaris', 'tb_inventaris.id_barang = tb_mutasimasuk.id_barang', 'left')
        ->join('tb_ruangan', 'tb_ruangan.id_ruangan = tb_inventaris.id_ruangan', 'left')
        ->join('tb_tahunanggaran', 'tb_tahunanggaran.id_tahun = tb_mutasimasuk.id_tahun', 'left')
            ->where(['tb_mutasimasuk.id_tahun' => $id_tahun])
            ->get()->result_array();

        return $query;
    }

    //Tambah Data Mutasi Barang Masuk ke Dalam Kantor UPPD Pelaihari
    public function insert_data(){
        $data = [
            'nip'=>$this->input->post('nip'),
            'nama_pegawai'=> $this->input->post('nama'),
            'jabatan'=> $this->input->post('jabatan'),
            'username'=>$this->input->post('nip'),
            'tanggal_lahir'=>$this->input->post('tanggal_lahir'),
            'password'=> md5(date('dmY',strtotime($this->input->post('tanggal_lahir')))),
            'level_pengguna'=> $this->input->post('level'),
        ];
        $this->db->insert("tb_login", $data);

        if($this->db->affected_rows()>0){
            $this->session->set_flashdata("pesan", "Data ruangan berhasil disimpan!");
        }
    }

    //Edit Data pada Mutasi Barang Masuk
    public function update_data($id_barangmasuk, $id_barang)
    {
        $dataMutasiMasuk = [
            'id_instansi'=> $this->input->post('id_instansi'),
            'id_tahun'=> $this->input->post('id_tahun')
        ];

        $dataInventaris = [
            'nama_barang'=> $this->input->post('nama_barang'),
            'merk'=> $this->input->post('merk'),
            'ukuran'=> $this->input->post('ukuran'),
            'id_ruangan'=> $this->input->post('id_ruangan')
        ];

        $this->db->update('tb_mutasimasuk', $dataMutasiMasuk, ['id_barangmasuk' => $id_barangmasuk]);
        $this->db->update('tb_inventaris', $dataInventaris, ['id_barang' => $id_barang]);

        if($this->db->affected_rows() > 0)
            $this->session->set_flashdata("pesan", "Data barang berhasil diperbaharui!");
    }

    public function delete_data($id_login)
    {
        $this->db->delete('tb_login', ['id_login' => $id_login]);

        if($this->db->affected_rows() > 0)
            $this->session->set_flashdata("pesan", "Data ruangan berhasil dihapus!");
    }
}