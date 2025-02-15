<?php include "header.php"; ?>
		
		<!-- Awal Page -->
		<div class="container">
		<!-- Awal baris -->
		<div class="row">
			<div class="col-md-12"><!-- Awal Kolom Pertama -->
			<div class="panel panel-default">
				<div class="panel-body">
				<h2 style="text-muted"><span class="glyphicon glyphicon-list"></span><b style="color:#48D1CC"> Data Dewan Komisaris</h2></b>
					<table class="table table-bordered table-hover" id="data-table">
						<thead>
						<tr>
							<th>Nip</th>
							<th>Nama</th>
							<th>jenis Kelamin</th>
							<th>jabatan</th>
							
						</tr>
						</thead>
						<?php

						include "koneksi.php";
						$sql=$koneksi->query("select * from dewan_komisaris order by nip ASC");

						while($row= $sql->fetch_assoc()){
						?>
						<tr>
							<td><?php echo $row['nip']?></td>
							<td><?php echo $row['nama']?></td>
							<td><?php echo $row['jenis_kelamin']?></td>
							<td><?php echo $row['jabatan']?></td>
							<td><a href="Detail-komisaris.php?id=<?php echo $row['komisaris_id']?>">
                    <button class="btn btn-xs btn-danger glyphicon glyphicon-zoom-in"></button>
                </a></td>
						</tr>
						<?php } ?>
						</table>
				</div>
      </div>
			</div><!-- Akhir Kolom Pertama -->
      </div>
			</div><!-- Akhir Kolom Kedua -->
		</div><!-- Akhir Baris -->
		</div><!--  Akhir Page -->
		<?php include "footer.php";?>