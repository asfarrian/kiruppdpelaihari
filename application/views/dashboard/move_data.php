               <!-- Begin Page Content -->
               <div class="container-fluid">
 
                   <!-- Page Heading -->
                   <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Mutasi Data Keluar</h1>
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
								<label for="nama">ID Barang</label>
								<input disabled 
                                type="text" 
                                autocomplete="off" 
                                name="id_barang" 
                                class="form-control" 
                                value="<?php echo $dashboard['id_barang']?>">
							</div>
							<div class="form-group">	
								<label for="nama">Nama Barang</label>
								<input disabled 
                                type="text" 
                                autocomplete="off" 
                                name="nama_barang" 
                                class="form-control" 
                                value="<?php echo $dashboard['nama_barang']?>">
							</div>
							<div class="form-group">
								<label for="nama">Merk</label>
								<input disabled type="text" 
                                autocomplete="off" 
                                name="merk" 
                                class="form-control" value="<?php echo $dashboard['merk']?>">
							</div>
                            <div class="form-group">
								<label for="nama">Ruangan</label>
								<input disabled type="text" 
                                autocomplete="off" 
                                name="id_ruangan" 
                                class="form-control" value="<?php echo $dashboard['nama_ruangan']?>">
							</div>
                            <div class="form-group">
								<label for="nama">Penerima Mutasi</label>
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
								<select name="tahun_anggaran" required class="form-control">
									<option value="">Pilih Tahun</option>
                                    <option value="2021">2021</option>
									<option value="2021">2022</option>
									<option value="2021">2023</option>
									<option value="2021">2024</option>
									<option value="2021">2025</option>
 >								</select>
							</div>
							<div class="form-group">
								<button type="submit" name="keluar" class="btn btn-primary">Simpan
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
