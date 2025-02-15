<?php
  session_start();
  if (empty($_SESSION['user_id'])){
    header("location:../login.php");
  }
?>
<?php include "header.php"; ?>
<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
					<div class="jumbotron"style="background-color:#48D1CC">
						<h2><b style="color:#FFFFFF">SELAMAT DATANG ( <?php echo $_SESSION['username'];?> )</h2></b>
						<p>Ini adalah website PT Perkebunan Nusantara III (Persero) merupakan Badang Usaha Milik Negara (BUMN) yang bergerak di bidang pengelolaan, pengolahan dan pemasaran hasil Perkebunan. Komoditi yang diusahakan adalah kelapa sawit, karet, tebu, teh, kopi, tembakau, aneka kayuan, buah-buahan dan aneka tanaman lainnya. </p>
						
						<p><a class="btn btn-primary btn-lg" href="tampil-user.php"role="button"><b style="color:#FFFFFF">User</a></p>
						<a class="btn btn-primary btn-lg" href="tampil-pimpinan.php"role="button"><b style="color:#FFFFFF" >Pimpinan</a>
						<a class="btn btn-primary btn-lg" href="tampil-pelaksana.php"role="button"><b style="color:#FFFFFF"> Pelaksana</a></b></a></b></a></b></a></p></h2>
					</div>
					</div>
				</div>
				</div>
      </div>
		</div>
</div><!-- Akhir Jumbotron -->
<?php include "footer.php"; ?>
