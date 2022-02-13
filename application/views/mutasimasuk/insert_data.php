               <!-- Begin Page Content -->
               <div class="container-fluid">
 
                   <!-- Page Heading -->
                   <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Mutasi Barang Masuk</h1>
						<div class="form-group">
						<a href="<?= base_url('mutasimasuk');?>"class="btn btn-secondary btn-icon-split btn-sm">
                                        <span class="icon text-white-50">
										<i class="far fa-arrow-alt-circle-left"></i>
                                        </span>
                                        <span class="text">Kembali</span>
                                    </a>
						</div>
                    </div>

 <!-- DataTales Example -->
 <div class="card shadow mb-4">
     <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">Tambah Data</h6>
     </div>
     <div class="card-body">
     <div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-body">
						<form action="<?= base_url('mutasimasuk/tambah');?>" method="post" class="mt-3">
							<div class="form-group">
								<label for="nama">Nama Barang</label>
								<input type="text" autocomplete="off" name="nama_barang" class="form-control" required>
							</div>
                            <div class="form-group">
								<label for="nama">Merk</label>
								<input type="text" autocomplete="off" name="merk" class="form-control" required>
							</div>
                            <div class="form-group">
								<label for="nama">Ukuran</label>
								<input type="text" autocomplete="off" name="ukuran" class="form-control" required>
							</div>
                            <div class="form-group">
								<label for="nama">Barang Dari</label>
								<select name="id_instansi" required class="form-control">
									<option value="">Pilih Instansi</option>
									<?php
										foreach($instansi as $row){
											echo "<option value='$row->id_instansi'>$row->nama_instansi</option>";
										}
										?>
								</select>
                            </div>
                            <div class="form-group">
								<label for="nama">Tahun Anggaran</label>
								<select name="id_tahun" required class="form-control">
									<option value="">Pilih Tahun</option>
									<?php
										foreach($tahunanggaran as $row){
											echo "<option value='$row->id_tahun'>$row->nama_tahun</option>";
										}
										?>
								</select>
                            </div>
                            <div class="form-group">
								<label for="nama">Ruangan</label>
								<select name="id_ruangan" required class="form-control">
									<option value="">Pilih Ruangan</option>
									<?php
										foreach($ruangan as $row){
											echo "<option value='$row->id_ruangan'>$row->nama_ruangan</option>";
										}
										?>
								</select>
							</div>
							<div class="form-group">
								<button type="submit" name="simpan" 
								class="btn btn-primary btn-icon-split btn-sm">
								<span class="icon text-white-50">
								<i class="fas fa-save"></i></span>
								<span class="text">Simpan</span>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>	
     </div>
 </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
