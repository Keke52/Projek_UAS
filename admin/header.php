<!doctype HTML>
<html>
<head>
  <meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>PTPN</title>
  <link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="../bootstrap/css/dataTables.bootstrap.min.css" rel="stylesheet">
  <link href="../bootstrap/css/styles.css" rel="stylesheet">
  <script src="../bootstrap/plugins/ckeditor/ckeditor.js"></script>
  <style>
    body {
      padding-top: 60px;
    }
  </style>
</head>
<body>
    
	<!-- Awal script Navbar -->
    <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
            <span class="sr-only">Toggle Nav</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php" style="color: #48D1CC">PT.Perkebunan Nusantara</a>
        </div>
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
          <ul class="nav navbar-nav navbar-right">
            <li class="active">
							<a href="index.php" style="color: #FFFFFF" ><span class="glyphicon glyphicon-home"></span> Dashboard <span class="sr-only">(current)</span></a>
						</li>
             <li>
              <a href="tampil-pimpinan.php"  style="color: #FFFFFF"><span class="glyphicon glyphicon-user"></span>Karyawan Pimpinan</a>
            </li>
             <li>
              <a href="tampil-pelaksana.php"  style="color: #FFFFFF"><span class="glyphicon glyphicon-user"></span>Karyawan Pelaksana</a>
            </li>
            <li>
							<a href="contact.php"  style="color: #FFFFFF"><span class="glyphicon glyphicon-user"></span> Kritik dan Saran</a>
						</li>
            <li>
							<a href="tampil-user.php"  style="color: #FFFFFF"><span class="glyphicon glyphicon-registration-mark"></span> User</a>
						</li>
            <li class="dropdown">
            <a href="tampil-user.php"  style="color: #FFFFFF"class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Hallo ( <?php echo $_SESSION['username'];?> )<span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li><a href="profile.php"><span class="glyphicon glyphicon-book"></span> Profile</a></li>
              <li><a href="../logout.php"><span class="glyphicon glyphicon-lock"></span> Logout</a></li>
              </ul>
          </li>
          </ul>
        </div>
      </div>
    </nav><!-- Akhir script Navbar -->