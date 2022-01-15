               <!-- Begin Page Content -->
               <div class="container-fluid">
 
                   <!-- Page Heading -->
                   <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Ruangan</h1>
                    </div>

 <!-- DataTales Example -->
 <div class="card shadow mb-4">
     <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">Ubah Data</h6>
     </div>
     <div class="card-body">
     <div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-body">
						<form action="" method="post" class="mt-3">
							<div class="form-group">
								<label for="nama">Kode Barang</label>
								<input type="text" autocomplete="off" name="kode_barang" class="form-control" value="<?php echo $dashboard['kode_barang']?>">
								<label for="nama">Nama Barang</label>
								<input type="text" autocomplete="off" name="nama_barang" class="form-control" value="<?php echo $dashboard['nama_barang']?>">
								<label for="nama">Merk</label>
								<input type="text" autocomplete="off" name="merk" class="form-control" value="<?php echo $dashboard['merk']?>">
								<label for="nama">Nomor Registrasi</label>
								<input type="text" autocomplete="off" name="nomor_registrasi" class="form-control" value="<?php echo $dashboard['nomor_registrasi']?>">
								<label for="nama">Ukuran</label>
								<input type="text" autocomplete="off" name="ukuran" class="form-control" value="<?php echo $dashboard['ukuran']?>">
								<label for="nama">Bahan</label>
								<input type="text" autocomplete="off" name="bahan" class="form-control" value="<?php echo $dashboard['bahan']?>">
								<label for="nama">Tahun</label>
								<input type="text" autocomplete="off" name="tahun_pembelian" class="form-control" value="<?php echo $dashboard['tahun_pembelian']?>">
								<label for="nama">Asal-Usul</label>
								<input type="text" autocomplete="off" name="asal_usul" class="form-control" value="<?php echo $dashboard['asal_usul']?>">
								<label for="nama">Kondisi</label>
								<input type="text" autocomplete="off" name="kondisi" class="form-control" value="<?php echo $dashboard['kondisi']?>">
								<label for="nama">Harga</label>
								<input type="text" autocomplete="off" name="harga" class="form-control" value="<?php echo $dashboard['harga']?>">
								<label for="nama">Keterangan</label>
								<input type="text" autocomplete="off" name="keterangan" class="form-control" value="<?php echo $dashboard['keterangan']?>">
								<label for="nama">Ruangan</label>
								<select name="ruangan"  class="form-control">
									<option value="<?php echo $dashboard['id_ruangan']?>"><?php echo $dashboard['nama_ruangan']?></option>
									<?php
										foreach($ruangan as $row){
											echo "<option value='$row->id_ruangan' $select>$row->nama_ruangan</option>";
										}
										?>
								</select>
							</div>
							<div class="form-group">
								<button type="submit" name="ubah" class="btn btn-primary">Simpan
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
