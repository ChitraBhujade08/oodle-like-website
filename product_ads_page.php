<?php
session_start();
ob_start();
 $ads_subcat=$_GET["subcatid"];

    // Step 1: DB connection
            $conn = mysqli_connect("localhost", "root", "" , "db_classified");
            if(mysqli_connect_errno()){
               // die("DB connection error".mysqli_connect_error());
                trigger_error("DB connection error".mysqli_connect_error());
                
            } 
            $sqlSelectProduct= "select * from tbl_product where subcategory_id = $ads_subcat" ;
            $sqlSelectedProduct=mysqli_query($conn,$sqlSelectProduct);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <title>Document</title>
    <style type="text/css">
       
        .a{
            margin-top:30px;
        }
        .b{
            background-color:orange;
            width:150px;
            color:white;
        }
        .c{
            border:solid 1px #ccc;
            width:300px;
        }
        .inbox1{
            float: left;
            margin-top: 10px;
            margin-left: 20px;
            color:black;
            font-size:20px;
        }
        .inbox2{
            float: left;
        }
        .d{
            background-color:orange;
            color:white;  
        }
    .ab{
        text-indent:20px;
    }
    .image{
        background-color:lightgrey;
    }
    </style>
</head>
<body>
    <form action="" method="post" target="" enctype="multipart/form-data">
        <?php 
        include("header.php");
        ?>
        <div class="container-fluid">
            <div class="col-md-12 a">
            <img src="images/main.jpeg" alt="" width="100%" height="250px">
            </div>
        </div>
        <div class="container">
            <div class="col-md-12">
                <div class="row a">
                    <?php
                        $count=1;
                        while($list=mysqli_fetch_assoc($sqlSelectedProduct)){
                            $product_id=$list["product_id"];
                            $product_icon= $list["image"];
                            $product_name=$list["product_name"];
                            $price=$list["product_price"];

                    ?>
                    <div class="col-md-6 ">
                        <div class="card" style="width: 18rem;">
                        <img src="images/<?php echo $product_icon;?>" alt="">
                            <div class="card-body">
                                <b class="card-title"><?php echo $price;?></b>
                                <p class="card-text"><?php echo $product_name;?></p>
                                <a href="product_ads_details.php?product_id=<?=$product_id;?>">read more...</a>
                            </div>
                        </div> 
                    </div>
                    <?php
                    $count++;
                        }
                    ?>
                </div>
            </div>
        </div>
    
    </form>
</body>
</html>