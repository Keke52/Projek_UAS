<?php include "header.php"; ?>
           <div class="container">
		<!-- Awal baris -->
		<div class="row">
			<div class="col-md-8">
				<div class="panel panel-default">
				<div class="panel-body"><!-- Awal Kolom Pertama -->
				<h2><p style="text-align: center;"><b style="color: #48D1CC">Kantor Pusat PTPNIII (Persero)</b></h2>	
				<h4 style="text-muted"><span class="glyphicon glyphicon-map-marker"></span> Kantor Pusat PT Perkebunan Nusantara III (Persero)</h4>
				<p><justify>Gedung Agro Plaza Lt. 15, Jl. H. R. Rasuna Said Kav. X2 No.1, Kuningan Timur, Setiabudi, Jakarta Selatan 12950</justify>

				<h4 style="text-muted"><span class="glyphicon glyphicon-earphone"></span> Telepon: (+62-21) 29183300</h4><br>
				
				<h4 style="text-muted"><span class="glyphicon glyphicon-print"></span> Fax: (+62-21) 5203030</h4><br>
                <h4 style="text-muted"><span class="glyphicon glyphicon-envelope"></span> sekretariat@holding-perkebunan.com</h4>
                <br>
            </p>
        </div>
    </div>
</div>
<!-- Awal Page -->
		<div class="container">
		<!-- Awal baris -->
		<div class="row">
			<div class="col-md-4"><!-- Awal Kolom Pertama -->
			<div class="panel panel-default">
				<div class="panel-body">
				<h2 style="text-muted"><span class="glyphicon glyphicon-list"></span> Contact</h2>
				<?php 

					if(@$_GET['pesan']=="inputBerhasil"){

					?>
									<div class="alert alert-success">
									Terima kasih, pesan anda sudah terkirim!
									</div>
					<?php

					}

					?>
					<form action="proses-komentar.php" method="post">
						<table class="table table-hover">
							<tr>
								<td>Nama Lengkap
								<input type="text" name="nama" class="form-control input-md" placeholder="Isikan nama anda dengan lengkap" required>
								</td>
							</tr>
							<tr>
								<td>Alamat Email
								<input type="email" name="email" class="form-control input-md" placeholder="Isikan alamat email yang masih aktif" required>
								</td>
							</tr>
							<tr>
								<td>Pesan
								<textarea name="pesan" class="form-control input-md" required> </textarea>
								</td>
							</tr>
							<tr>
								<td>
								<input type="submit" value="Kirim" class="btn btn-lg btn-info"> <input type="reset" value="Batal" class="btn btn-lg btn-warning">
								</td>
							</tr>
						</table>
					</form>
				</div>
      </div>
			</div>
		</div>
	</div>
</div>
</div>

  <?php include "footer.php"; ?>