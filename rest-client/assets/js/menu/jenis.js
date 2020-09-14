function jenis(alert = null){
	cekKoneksi        = false;
	const header      = `
		<div class="content-header">
			<div class="container-fluid">
				<div class="row mb-2">
					<div class="col-sm-6">
						<h1 class="m-0 text-dark">Data Jenis</h1>
					</div><!-- /.col -->
					<div class="col-sm-6">
						<ol class="breadcrumb float-sm-right">
							<li class="breadcrumb-item"><a href="#">Master Data</a></li>
							<li class="breadcrumb-item active">Jenis</li>
						</ol>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.container-fluid -->
		</div>`;
	const tableHeader = `
			<section class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="container-fluid">
					  		<div class="card">
					   	 		<div class="card-header d-flex justify-content-between">
								    <h5 class="my-0 mr-md-auto font-weight-normal">Data Jenis</h5>
								    <!-- modal bootom -->
								    <button type="button" class="btn btn-primary tombolTambahData" data-toggle="modal" data-target="#formModalTambah">Tambah</button>
					    		</div>
					    		<div class="card-body">
									<table id="table-data" class="table table-responsive table-bordered table-striped table-hover">
										<thead>
											<tr>
												<th>No</th>
												<th>Nama</th>
												<th>Total</th>
												<th>Selesai</th>
												<th>Materi Total</th>
												<th>Materi Selesai</th>
												<th>Persentese</th>
												<th>Opsi</th>
											</tr>
										</thead>
										<tbody>`;
	const tableFooter = `
		</tbody>
		<tfoot>
		<tr>
		<th>No</th>
		<th>Nama</th>
		<th>Total</th>
		<th>Selesai</th>
		<th>Materi Total</th>
		<th>Materi Selesai</th>
		<th>Persentese</th>
		<th>Opsi</th>
		</tr>
		</tfoot>
		</table>
		</div>
		</div>
		</div>
		</div>
		</div>
		</section>`;
	const tableBody   = (data) => {
		let table = ``;
		data.forEach((result, i)=>{
			table += `
				<tr>
					<td style="width: 10px;">${i+1}</td>
					<td>${result.data.nama_jenis}</td>
					<td class="text-right">${result.jumlah.length}</td>
					<td class="text-right">${result.review.jumlahMateriSelesai}</td>
					<td class="text-right">${countMateri(result.jumlah)}</td>
					<td class="text-right">${countMateri(result.jumlah, 'selesai')}</td>
					<td class="text-right">${countMateri(result.jumlah, 'average')}%</td>
					<td class="text-nowrap">
						<button 
							class="btn btn-info btn-xs zoom-hover"
							data-detail='${JSON.stringify(result.jumlah)}'
							data-review='${JSON.stringify(result.review)}'
							data-nama="${result.data.nama_jenis}"
							data-url="url"
							data-back="masterdata_jenis"
							data-toggle="modal"
							data-target="#modalDetail"
							onclick="bahasa_detaildata(this)" 
						>Detail</button>
						<button 
							class="btn btn-warning btn-xs zoom-hover"
							data-toggle="modal"
							data-target="#formModalUbah"
							data-nama="${result.data.nama_jenis}"
							data-id="${result.data.id}"
							onclick="editData(this)"
						>Edit</button>
						<button 
							class="btn btn-danger btn-xs zoom-hover"
							data-id="${result.data.id}"
							data-url="url" 
							data-nama="${result.data.nama_jenis}" 
							onclick="hapusData(this)"
							data-toggle="modal"
							data-target="#modal-delete"
						>Delete</button>
					</td>
				</tr>
			`;
		});
		return table;}
	const modalTambah = `
		<!-- modal form tambah -->
		<div class="modal fade" id="formModalTambah" tabindex="-1" role="dialog" aria-labelledby="formModalTambahLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="formModalTambahLabel">Tambah Data Jenis</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					<form action="" method="post">
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="nama">Nama</label>
									<input type="text" id="nama-tambah" name="nama-tambah" class="form-control" placeholder="Nama" required="">
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal" required="">Kembali</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" name="tambah" id="btn-tambah">Tambah</button>
						</form>
					</div>
				</div>
			</div>
		</div> `;
	const modalUbah   = `
		<!-- modal form ubah -->
		<div class="modal fade" id="formModalUbah" tabindex="-1" role="dialog" aria-labelledby="formModalUbahLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="formModalUbahLabel">Edit Data Jenis</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
					<form action="" method="post">
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="nama">Nama</label>
									<input type="text" id="nama-ubah" name="nama" class="form-control" placeholder="Nama" required="">
									<input type="text" id="id-ubah" name="id" hidden="">
								</div>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal" required="">Kembali</button>
						<button type="button" class="btn btn-primary" data-dismiss="modal" name="ubah" id="btn-ubah">Ubah</button>
						</form>
					</div>
				</div>
			</div>
		</div> `;
	const modalHapus  = `
		<!-- modal hapus -->
		<div class="modal fade" id="modal-delete" style="display: none;" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content bg-danger">
					<div class="modal-header">
						<h4 class="modal-title">Hapus Jenis</h4>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body" id="modal-body-delete">
					</div>
					<div class="modal-footer justify-content-between">
						<button type="button" class="btn btn-outline-light" data-dismiss="modal">Close</button>
						<button id="btn-delete" class="btn btn-outline-light" data-dismiss="modal">Delete</button>
					</div>
				</div>
				<!-- /.modal-content -->
			</div>
			<!-- /.modal-dialog -->
		</div> `;
	const modalDetail = `
		<!-- modal detail -->
		<div class="modal fade" id="modalDetail" tabindex="-1" role="dialog" aria-labelledby="modalDetailLabel" aria-hidden="true">
			<div class="modal-dialog modal-xl" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="modalDetailLabel">Detail Jenis</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body" id="modal-body-detail">

					<div class="modal-footer">
						<button type="button" class="btn btn-secondary" data-dismiss="modal" required="">Kembali</button>
					</div>
				</div>
			</div>
		</div>`;
	const script      = `
		<script>
		$(function () {
		    $('#table-data').DataTable({
		      "paging": true,
		      "lengthChange": true,
		      "searching": true,
		      "ordering": true,
		      "info": true,
		      "autoWidth": true,
		      "responsive": true,
					"columnDefs": [
						{ "orderable": false, "targets": [3] }
					]
		    });
		  });

		function editData(data){
			$('#nama-ubah').val(data.dataset.nama);
			$('#id-ubah').val(data.dataset.id);
		}

		function hapusData(data){
			$('#modal-body-delete').html(\`<p>Apakah anda yakin akan menghapus data <b>\${data.dataset.nama}</b> ..?</p>\`);
			$('#btn-delete').attr('onclick', 'jenis_delete('+ data.dataset.id + ')');
		}
		function bahasa_detaildata(data){
			$('#modalDetailLabel').html('Detail Data ' + data.dataset.nama);
			$('#modal-body-detail').html(detailData(data));
		}
		$('#btn-tambah').on('click', ()=>{
			let data = $('#nama-tambah').val();
			jenis_tambah(data);
		});
		$('#btn-ubah').on('click', ()=>{
			jenis_ubah({id: $('#id-ubah').val(),nama: $('#nama-ubah').val()});
		});
		</script>`;
	const jenis_render = (data) => {
		const table = tableHeader + tableBody(data.data) + tableFooter;
		const modal = modalUbah + modalHapus + modalTambah + modalDetail;
		mainRender(header + table + modal + script);
		if (alert != null) smartAlert(alert.icon, alert.text);
		cekKoneksi = true;
	}
	const getData = ()=>{
		mainLoading();
		$.ajax({
			url: base_url(),
			type: 'get',
			dataType: 'json',
			data: {
				'get': 'jenis'},
			success: result => {
				if (result.response) jenis_render(result);
				else mainLoading('Koneksi bermasalah');
			}
		});	
	}

	const coba = ()=>{
		if (!cekKoneksi) {
			getData();
			setTimeout(()=>{
				if (!cekKoneksi) {
					mainLoading('Masalah koneksi... Mencoba menghubungkan kembali');
					setTimeout(coba, 3000);
				}
			}, 3000);
		}
	}

	getData();
	setTimeout(coba, 7000);
}

function jenis_tambah(data){
	cekKoneksi = false;
	const act = () => {
		mainLoading();
		$.ajax({
			url: base_url("?post=jenis"),
			type: 'post',
			dataType: 'json',
			data: {
				'nama': data,
			},
			success: result => {
				if (result.response) jenis({icon: 'success', text: "berhasil menambahkan data"});
				else jenis({icon: 'falied', text: "gagal menambahkan data"});
	
			}
		});
	};
	setTimeout(act,500);

	const coba = ()=>{
		if (!cekKoneksi) {			
			act();
			setTimeout(()=>{
				if (!cekKoneksi) {					
					mainLoading('Masalah koneksi... Mencoba menghubungkan kembali');
					setTimeout(coba, 3000);
				}
			}, 3000);
		}
	}
	setTimeout(coba, 7000);
}

function jenis_ubah(data){
	cekKoneksi = false;
	const act = () => {
		mainLoading();
		$.ajax({
			url: base_url("?put=jenis"),
			type: 'post',
			dataType: 'json',
			data: {
				'nama': data.nama,
				'id': data.id,
			},
			success: result => {
				if (result.response) jenis({icon: 'success', text: "berhasil mengubah data"});
				else jenis({icon: 'falied', text: "gagal mengubah data"});
	
			}
		});
	};
	setTimeout(act,500);

	const coba = ()=>{
		if (!cekKoneksi) {			
			act();
			setTimeout(()=>{
				if (!cekKoneksi) {					
					mainLoading('Masalah koneksi... Mencoba menghubungkan kembali');
					setTimeout(coba, 3000);
				}
			}, 3000);
		}
	}
	setTimeout(coba, 7000);
}

function jenis_delete(id){
	cekKoneksi = false;
	const act = () => {		
		mainLoading();
		$.ajax({
			url: base_url(),
			type: 'get',
			dataType: 'json',
			data: {
				'delete': 'jenis',
				'id': id},
			success: result => {
				if (result.response) {
					jenis({icon: 'success', text: "berhasil menghapus data"});
					cekKoneksi = true;					
				} else jenis({icon: 'falied', text: "gagal menghapus data"});
			}
		});
	};
	setTimeout(act,500);

	const coba = ()=>{
		if (!cekKoneksi) {			
			act();
			setTimeout(()=>{
				if (!cekKoneksi) {					
					mainLoading('Masalah koneksi... Mencoba menghubungkan kembali');
					setTimeout(coba, 3000);
				}
			}, 3000);
		}
	}
	setTimeout(coba, 7000);
}