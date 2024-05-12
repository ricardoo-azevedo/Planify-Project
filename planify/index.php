<!doctype html>
<html lang="pt-br">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Bootstrap demo</title>
  <meta content="" name="description">
  <meta content="" name="keyworks">

  <!-- Arquivo CSS -->
  <link rel="stylesheet" href="style.css">

  <!-- Bootstrap CSS CDN -->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">

  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

</head>

<body>

  <header class="header ">
    <div class="bg-info">
      <?php
      include_once 'assets/templates/header.html';
      include_once 'assets/templates/herosection.html';
      ?>
    </div>
  </header>



  <!-- =========== Main ===========  -->

  <footer class="footer bg-warning">
    <div class="bg-danger">
      <?php
      include_once 'assets/templates/footer.html';
      ?>
    </div>
  </footer>


  <!-- Bootstrap JS CDN -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</body>

</html>