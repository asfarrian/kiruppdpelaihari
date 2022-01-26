               <!-- Begin Page Content -->
               <div class="container-fluid">
 
                   <!-- Page Heading -->
                   <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Mutasi Barang Masuk</h1>
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
								<label for="nama">Nama Barang</label>
								<input type="text" autocomplete="off" name="nama_barang" class="form-control" value="<?php echo ($dashboard['nama_barang'])?>" required>
							</div>
                            <div class="form-group">
								<label for="nama">Merk</label>
								<input type="text" autocomplete="off" name="merk" class="form-control" value="<?php echo $dashboard->merk;?>" required>
							</div>
                            <div class="form-group">
								<label for="nama">Ukuran</label>
								<input type="text" autocomplete="off" name="ukuran" class="form-control" value="<?php echo $dashboard->ukuran;?>" required>
							</div>
                            <div class="form-group">
								<label for="nama">No BAST</label>
								<input type="text" autocomplete="off" name="no_bast" class="form-control" value="<?php echo $mutasimasuk->no_bast;?>" required>
							</div>
                            <div class="form-group">
								<label for="nama">Tanggal</label>
								<input type="date" autocomplete="off" name="tanggal" class="form-control" value="<?php echo $mutasimasuk->tanggal;?>" required>
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
								<select name="tahun_anggaran" required class="form-control">
									<option value="<?php echo $mutasimasuk->tanggal;?>" ></option>
                                    <option value="2021">2021</option>
									<option value="2021">2022</option>
									<option value="2021">2023</option>
									<option value="2021">2024</option>
									<option value="2021">2025</option>
 >								</select>
							</div>
                            <div class="form-group">
								<label for="nama">Ruangan</label>
								<select name="id_ruangan" required class="form-control">
                                <option value="">Pilih Kelas</option>
									<?php
										foreach($ruangan as $row){
                                            if($row->id_ruangan == $mutasimasuk->id_ruangan){
                                                $select = "selected";
                                            }else{
                                                $select = "";
                                            }
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
