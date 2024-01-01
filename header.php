<?php 
   session_start();
   ob_start();
   
       echo "<pre>";
       print_r($_SESSION);
       echo "</pre>";
   //     Array
   // (
   //     [LOGINID] => 1
   //     [LOGINNM] => chitra@gmail.com 
   //     [UTYPEID] => 2
   // )
   
   
   // step3: checking registered variable empty or not
//    if(empty($_SESSION["LOGINID"]) && empty($_SESSION["LOGINNM"]) && empty($_SESSION["UTYPEID"])){
//    header("location:login.php");
//    }
?>
        <div class="container">
            <div class="col-md-12">
                <div class="row a">
                    <div class="col-md-2"><img src="images/download.png" alt="" width="60px" height="40px"></div>
                    <div class="col-md-6"></div>
                    <div class="col-md-2"><a class="btn btn default b" href="ad.php">Sell Your Stuff</a></div>
                    <?php 
                        if(empty($_SESSION["LOGINID"]) && empty($_SESSION["LOGINNM"]) && empty($_SESSION["UTYPEID"])){
                    ?>
                    <div class="col-md-2"><a class="btn btn default b" href="login.php">Login</a></div>
                    <?php 
                        }else{   
                    ?>
                    <div class="col-md-2"><a class="btn btn default b" href="logout.php">Logout</a></div>
                    
                    <?php
                        }
                    ?>

                </div>
            </div>
        </div>