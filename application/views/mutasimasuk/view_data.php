               <!-- Begin Page Content -->
               <div class="container-fluid">
 
                   <!-- Page Heading -->
                   <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Mutasi Barang Masuk</h1>
                        <a href="<?= base_url('mutasimasuk/tambah');?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i>Tambah Barang Masuk</a>
                    </div>

 <!-- DataTales Example -->
 <div class="card shadow mb-4">
     <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">Pilih Tahun Anggaran</h6>
     </div>
     <div class="card-body">
     <div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-body">
						<form action="<?= site_url("Mutasimasuk") ?>" method="get" class="mt-3">
							<div class="form-group">
								<label for="nama">Tahun Anggaran</label>
								<select name="tahun_anggaran" required class="form-control">
									<option value="">Pilih Tahun</option>
                                    <option
                                        value="2021"
                                        <?php if (isset($selected_tahun_anggaran) && $selected_tahun_anggaran == "2021") {echo 'selected';} ?>>2021</option>
                                    <option
                                        value="2022"
                                        <?php if (isset($selected_tahun_anggaran) && $selected_tahun_anggaran == "2022") {echo 'selected';} ?>>2022</option>
                                    <option
                                        value="2023" 
                                        <?php if (isset($selected_tahun_anggaran) && $selected_tahun_anggaran == "2023") {echo 'selected';} ?>>2023</option>
                                    <option
                                        value="2024" 
                                        <?php if (isset($selected_tahun_anggaran) && $selected_tahun_anggaran == "2024") {echo 'selected';} ?>>2024</option>
                                    <option
                                        value="2025" 
                                        <?php if (isset($selected_tahun_anggaran) && $selected_tahun_anggaran == "2025") {echo 'selected';} ?>>2025</option>
 								</select>
							</div>
                          <input type="submit" class="btn btn-primary" value="Cari"></div>
                        </form>
						</div>
					</div>
				</div>
			</div>
		</div>
        <div class="d-sm-flex align-items-center justify-content-between mb-4">
                            <a
                                href="<?= site_url("Mutasimasuk/laporan_pdf/") ?>"
                                target="_blank"
                                class="btn btn-primary mt-3">Cetak PDF</a>
        </div>
 <div class="card shadow mb-4">
     <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">Table</h6>
     </div>
     <div class="card-body">
         <div class="table-responsive">
             <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                 <thead>
                     <tr>
                         <th>No</th>
                         <th>ID Barang</th>
                         <th>Nama Barang</th>
                         <th>Merk</th>
                         <th>Ukuran</th>
                         <th>Barang Dari</th>
                         <th>Tahun Anggaran</th>
                         <th>Keterangan</th>
                         <th>Ruangan</th>
                         <th>Aksi</th>
                     </tr>
                 </thead>
                 <tbody>
                <?php
					$no = 1;
					foreach($mutasimasuk as $data) {
                ?>
                    <tr>
                        <td><?= $no++ ?></td>
                        <td><?= $data['id_barang'] ?></td>
                        <td><?= $data['nama_barang'] ?></td>
                        <td><?= $data['merk'] ?></td>
                        <td><?= $data['ukuran'] ?></td>
                        <td><?= $data['nama_instansi'] ?></td>
                        <td><?= $data['tahun_anggaran'] ?></td>
                        <td><?= $data['keterangan'] ?></td>
                        <td><?= $data['nama_ruangan'] ?></td>
                        <td>
                            <div class='btn-group'>
                            <a
                                href='<?= site_url("Mutasimasuk/ubah/". $data['id_barangmasuk'] ."/". $data['id_barang']) ?>'
                                class='btn btn-warning'>Ubah</a>&nbsp;
                            <a
                                class='btn btn-danger'
                                href='<?= site_url("Mutasimasuk/hapus/". $data['id_barangmasuk'] ."/". $data['id_barang']) ?>'
                                onclick="return confirm('Ingin menghapus data ini?')">Hapus</a>
                            </div>
                        </td>
                    </tr>
                <?php } ?>
                 </tbody>
             </table>
         </div>
     </div>
 </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->