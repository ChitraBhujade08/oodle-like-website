<?php
session_start();
ob_start();
$strError = array();
    // Step 1: DB connection
            $conn = mysqli_connect("localhost", "root", "" , "db_classified");
            if(mysqli_connect_errno()){
               // die("DB connection error".mysqli_connect_error());
                trigger_error("DB connection error".mysqli_connect_error());
                
            } 
            $sqlSelect= "select * from tbl_product";
            $sqlSelected=mysqli_query($conn,$sqlSelect);
            $sqlSelectComment ="select * from tbl_product_comment,tbl_user WHERE tbl_user.user_id = tbl_product_comment.user_id";
            $sqlSelectedComment=mysqli_query($conn,$sqlSelectComment);

            // echo "<pre>";
            // print_r($_POST);
            // echo "</pre>";
    //             Array
    // (
    //     [txtComment] => 
    //     [btnComment] => Apply Comment
    // )


    if(isset($_POST["btnComment"]) && ($_POST["btnComment"] == "Apply Comment")){
        $user_comment=$_POST['txtComment'];
        $user_id=$_SESSION['LOGINID'];
        if(empty($strError)){
            $sqlInserted= "INSERT INTO tbl_product_comment(product_id,user_id,comment_desc,)
            VALUES(
                '".$product_id."',
                '".$user_id."',
                '".$user_comment."'
            )";

            $sqlInsertedComment = mysqli_query($conn,$sqlInserted);
        }
    }

    
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Document</title>
</head>
<style type="text/css">
    .outer {
        width: 550px;
        height: 600px;
        border: solid 1px #ccc;
        margin: 0 auto;
        margin-top: 75px;
        box-shadow: 15px 15px 15px #ccc;
        border-radius:10px;
        background-color:white;
    }
    .a{
        margin-top:30px;
        background-color:lightgrey;
        line-height:60px;
    }
    .b{
        background-color:orange;
        width:150px;
        color:white;
    }
    .c{
        margin-left:20px;
        margin-top:10px;
        margin-right:20px;
    
    }
    .d{
        margin-top:75px;
    }
    .e{
        background-color:#6b5b95;
        width:150px;
        color:white;
        margin-left:100px;
    }
    .f{
        margin-top:40px;
    }
    
    .g{
        border-radius:10px;   
    }
    .scrollbar-ripe-malinka::-webkit-scrollbar-track {
    -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
    background-color: #F5F5F5;
    border-radius: 10px;
    }
    .scrollbar-ripe-malinka::-webkit-scrollbar {
    width: 12px;
    background-color: #F5F5F5;
    }

    .scrollbar-ripe-malinka::-webkit-scrollbar-thumb {
        border-radius: 10px;
        -webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
        background-image: -webkit-linear-gradient(330deg, #f093fb 0%, #f5576c 100%);
        background-image: linear-gradient(120deg, #f093fb 0%, #f5576c 100%);
        
    }
    .example-1 {
    position: relative;
    overflow-y: scroll;
    height: 200px;
}
    
</style>
<body>
   <form name="frmProductDetail" id="frmProductDetailId" action="" method="post" target="" enctype="multipart/form data">
   <?php 
   include("header.php");
   ?>
   <div class="container">
        <div class="col-md-12">
            <div class="row">
                <?php
                    $count=1;
                    $sqlSelectComment ="select * from tbl_product_comment,tbl_user WHERE tbl_user.user_id = tbl_product_comment.user_id";
                    $sqlSelectedComment=mysqli_query($conn,$sqlSelectComment);
                    while($list=mysqli_fetch_assoc($sqlSelected)){
                                
                    $product_icon= $list["image"];
                    $product_name=$list["product_name"];
                    $price=$list["product_price"];
                    $description=$list["product_desc"];  
                    $short_desc = substr($description,0, 200);
                    //  $long_desc = substr($description,0, strlen($description));


                ?>
                <div class="col-md-6 outer">
                    <figure class="figure c">
                        <img src="images/<?php echo $product_icon;?>" class="figure-img img-fluid rounded" alt="..." width="400px" height="270px">
                        <figcaption class="figure-caption">
                            <label for="">Details</label>
                            <p><?php echo $price;?></p>
                            <p><?php echo $product_name;?></p>
                            <label for="">Description:</label>
                            <p><?php echo $short_desc;?></p>
                        </figcaption>
                    </figure>
                </div>
                                    
                <div class="col-md-6 d">
                    <label for=""><h4>Your Comment:</h4></label>
                    <textarea name="txtComment" class="form-control" id="txtCommentId" cols="70" rows="10" placeholder="Comments.."></textarea>
                    <div class="card example-1 scrollbar-ripe-malinka f" >
                                    <?php
                                        $count=1;
                                        while($list1=mysqli_fetch_assoc($sqlSelectedComment)){
                                        $profile_pic=$list["user_img"];           
                                        $comment_desc= $list["comment_desc"];
                                        $date=$list["posted_date"];
                                    ?>   
                            <div class="card-body">
                               <div class="row">
                                    <div class="col-md-2">
                                    <img src="images/<?php echo $profile_pic;?> " alt="" width="30px" height="30px">    
                                    </div>
                                    <div class="col-md-2">
                                    <?php echo $date;?>   
                                    </div>
                               </div>     
                               <p><?php echo $comment_desc;?><p>
                            </div>
                            <?php
                            $count++;
                            }
                            ?> 
                        </div>   
                        <div class="col-md-3 f">
                            <input type="submit" class="btn btn-primary" name="btnComment" id="btnCommentId" value="Apply Comment">
                            
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