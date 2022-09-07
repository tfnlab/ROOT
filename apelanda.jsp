<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Play - TFNLab</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="css/styles.css" rel="stylesheet" />
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
        <script>
          function callTFNLab() {
            var urlString =  "download.jsp?shirt=" + document.getElementById("shirt").value + "&body=0&smile=" + document.getElementById("smile").value + "&gum=" + document.getElementById("gum").value + "&lazers=" + document.getElementById("lazers").value + "&hats=" + document.getElementById("hats").value + "&earring=" + document.getElementById("earring").value + "&chain=" + document.getElementById("chain").value ;

            var xhttp = new XMLHttpRequest();
            xhttp.onreadystatechange = function() {
              if (this.readyState == 4 && this.status == 200) {
                var urlStringTwo =  "download.jsp?shirt=" + document.getElementById("shirt").value + "&body=0&smile=" + document.getElementById("smile").value + "&gum=" + document.getElementById("gum").value + "&lazers=" + document.getElementById("lazers").value + "&hats=" + document.getElementById("hats").value + "&earring=" + document.getElementById("earring").value + "&chain=" + document.getElementById("chain").value ;
                document.getElementById("imgfile").src = urlStringTwo;
              }
            };
            document.getElementById("imgfile").src = "prog.gif";
            xhttp.open("GET", urlString, true);
            xhttp.send();
          }
        </script>
    </head>
    <body>
        <div class="d-flex" id="wrapper">
            <!-- Sidebar-->
            <div class="border-end bg-white" id="sidebar-wrapper">
                <div class="sidebar-heading border-bottom bg-light">Apelanda</div>
                <div class="list-group list-group-flush">
                    <a class="list-group-item list-group-item-action list-group-item-light p-3" href="https://tfnlab.com">OpenSea</a>
                </div>
            </div>
            <!-- Page content wrapper-->
            <div id="page-content-wrapper">
                <!-- Top navigation-->
                <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
                    <div class="container-fluid">
                        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ms-auto mt-2 mt-lg-0">
                                <li class="nav-item"><a class="nav-link" href="https://twitter.com/tfnlab">OpenSea</a></li>
                            </ul>
                        </div>
                    </div>
                </nav>
                <!-- Page content-->
                <div class="container-fluid">

  <div class="form-group">
    <label for="exampleInputEmail1">Enter NFT Number</label>
    <input type="text" class="form-control" id="nftID" aria-describedby="Enter NFT ID" placeholder="Enter NFT Number">
  </div>
  <button type="submit" class="btn btn-primary">Enter Land</button>
</form>
                </div>
            </div>
        </div>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="js/scripts.js"></script>
    </body>
</html>
