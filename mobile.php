<?php
    session_start();
    ob_start();
        $conn = mysqli_connect("localhost", "root", "" , "db_classified");
            if(mysqli_connect_errno()){
                // die("DB connection error".mysqli_connect_error());
                trigger_error("DB connection error".mysqli_connect_error());
                    
            }
        $sqlSelect="select * from tbl_product";   
        $sqlSelected=mysqli_query($conn,$sqlSelect); 
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Document</title>
    <style type="text/css">
        .C{
            margin-top:40px;
            border:solid 2px #ccc;
        }
    </style>
</head>
<body>
    <form action="" method="post" target="" enctype="multipart/form-data">
        <div class="container">
        <?php
                $count=1;
                while($list = mysqli_fetch_assoc($sqlSelected)){
                    $image=$list["image"];
                    $name=$list["product_name"];
                    $price=$list["product_price"];
                    $desc=$list["short_desc"];

            ?>
            <div class="row C">
                <div class="col-md-6">
                    <img src="images/<?php echo $image;?>" alt="">
                </div>
                <div class="col-md-6">
                    <label for="">Product Name</label>
                <div><?php  echo $name;?></div>
                <label for="">Amount:</label> 
                <div><?php  echo $price;?></div>
                <label for="">Description:</label> 
                <div><?php  echo $desc;?></div> 
                </div>
            </div>
            <?php
                $count++;
                }
            ?>
        </div>
    </form>
</body>
</html>