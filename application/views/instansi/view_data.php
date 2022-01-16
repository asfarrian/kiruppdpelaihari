               <!-- Begin Page Content -->
               <div class="container-fluid">
 
                   <!-- Page Heading -->
                   <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Instansi</h1>
                        <a href="<?php echo base_url('ruangan/tambah');?>" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"><i
                                class="fas fa-download fa-sm text-white-50"></i>Tambah Instansi</a>
                    </div>

 <!-- DataTales Example -->
 <div class="card shadow mb-4">
     <div class="card-header py-3">
         <h6 class="m-0 font-weight-bold text-primary">Pilih Pemerintahan</h6>
     </div>
     <div class="card-body">
     <div class="row">
			<div class="col-md-6">
				<div class="panel panel-primary">
					<div class="panel-body">
						<form action="<?= site_url("Kir/index") ?>" method="get" class="mt-3">
							<div class="form-group">
								<label for="nama">Jenis Pemerintahan</label>
								<select name="jenispemerintahan" required class="form-control">
									<option value="">Pilih Pemerintahan</option>
                                    <option value="Provinsi">Provinsi</option>
                                    <option value="Kabupaten">Kabupaten</option>
                                    <option value="Kota">Kota</option>
 >								</select>
							</div>
                          <input type="submit" class="btn btn-primary" value="Cari"></div>
                        </form>
						</div>
					</div>
				</div>
			</div>
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
                         <th>Nama Instansi</th>
                         <th>Kabupaten/Kota</th>
                         <th>Aksi</th>
                     </tr>
                 </thead>
                 <tbody>
                 <?php
					$no = 1;
					foreach($instansi as $row){
					echo "<tr>
                        <td>$no</td>
                        <td>$row->nama_instansi</td>
                        <td>$row->kabupaten_kota</td>
                        <td><div class='btn-group'>
                        <a href=".base_url('ruangan/ubah/'.$row->id_instansi)." class='btn btn-warning'>&nbsp; Edit &nbsp;</a> &nbsp;
                        <a href=".base_url('ruangan/hapus/'.$row->id_instansi)." 
						class='btn btn-danger' onclick='return confirm(\"Ingin menghapus data ini?\");'>Hapus</a>
                        </td>
                        </tr>";
                            $no++;
						}
						 ?>
                 </tbody>
             </table>
         </div>
     </div>
 </div>

</div>
<!-- /.container-fluid -->

</div>
<!-- End of Main Content -->
