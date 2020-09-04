<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="keywords" content="">
    <meta name="description" content="">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    
        <!-- Scrollbar Custom CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">


    <!--External css link-->
    <link rel="stylesheet" href="dashboard.css">

    <!--global css-->
    <link rel="stylesheet" href="../user.css">


    <title>Dashboard</title>

    <!--fontawsome link-->
    <script defer src="https://use.fontawesome.com/releases/v5.0.7/js//all.js"></script>
    
        <!--icon on the URL-->
    <link rel="icon" href="../images/icon.ico">
</head>


<body>
    <?php include("../sidebar-over.php")?>

    <!--main body-->
    <div id="main">

        <div class="sticky">
            <button type="button" id="sidebarCollapse" class="btn btn-info">
                <i class="fas fa-align-left"></i>
                <span>Toggle Sidebar</span>
            </button>
        </div>



        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="card-counter primary">
                        <i class="fa fa-home quick_icon"></i>
                        <span class="count-numbers">12</span>
                        <span class="count-name">Total Quarters</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card-counter success">
                        <i class="fa fa-database quick_icon"></i>
                        <span class="count-numbers">6875</span>
                        <span class="count-name">Available Quarters</span>
                    </div>
                </div>

                <div class="col-md-3">
                    <div class="card-counter danger">
                        <i class="fa fa-building	 quick_icon"></i>
                        <span class="count-numbers">599</span>
                        <span class="count-name">Available Flats</span>
                    </div>
                </div>


                <div class="col-md-3">
                    <div class="card-counter info">
                        <i class="fa fa-users quick_icon"></i>
                        <span class="count-numbers">35</span>
                        <span class="count-name">Users</span>
                    </div>
                </div>
            </div>
        
                <!-- pie chart-->
                <div id="piechart" style="width: 900px; height: 500px; padding-top: 1%;"></div>
         
        </div>

    </div>


    <!--pi chart link-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <!--JQuery cdn link-->
    <script src="https://code.jquery.com/jquery-3.4.1.js" integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU=" crossorigin="anonymous"></script>

    <!--gobal js file link-->
    <script src="../user.js"></script>
    
    <!--External js-->
	<script type="text/javascript" src="dashboard.js"></script>


    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    
              <!-- jQuery Custom Scroller CDN -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.concat.min.js"></script>
</body>

</html>
