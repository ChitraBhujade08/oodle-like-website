<?php
session_start();
ob_start();
error_reporting(0);
$conn = mysqli_connect("localhost", "root", "" , "db_classified");
if(mysqli_connect_errno()){
   // die("DB connection error".mysqli_connect_error());
    trigger_error("DB connection error".mysqli_connect_error());
    
}

        // echo"<pre>";
        // print_r($_POST);
        // echo"</pre>";
        // Array
        // (
        //     [txtTitle] => mobile
        //     [txtShort] => bghjhuikjyhk
        //     [txtShort1] => ghgkhjljkl
        //     [btnSubmit] => Submit
        // )
        $strError = array();
        if(isset($_POST['btnSubmit']) && ($_POST['btnSubmit']) == "Submit"){
            //echo "*";
            $ad_title=$_POST["txtTitle"];
            $ad_short=$_POST["txtShort"];
            $ad_long=$_POST["txtShort1"];

            $image = $_FILES['txtMyFile']['name']; 
                $file_tmpname = $_FILES['txtMyFile']['tmp_name'];
                $file_type = $_FILES['txtMyFile']['type'];
                if(($file_type == "image/jpg") || ($file_type =="image/jpeg") || ($file_type =="image/png")) {
                    $dirname = "images/";
                }
                else {
                    $strErrors[3]="please Upload only jpg,jpeg,png type file";
                }

                if(move_uploaded_file($file_tmpname,$dirname.$image)){
                    echo "<span style='color:green'>File Uploaded Succesfully</span>";
                }

            if(empty($ad_title)){
                $strError[0]="please enter Advertisement title";
            }
            if(empty($ad_short)){
                $strError[1]="please enter Short Description";
            }
            if(empty($ad_long)){
                $strError[2]="please enter Long Description";
            }
            
            
            if(empty($strError)) {
                $sqlInserted = "INSERT INTO tbl_ad(ad_title,Ads_image,ad_shor_desc,ad_long_desc)
               VALUES(
                '".$ad_title."',
                '".$ad_short."',
                '".$ad_long."',
                '".$ad_file."',
               )"; 

               //exit;   
                $sqlInsertedAd = mysqli_query($conn,$sqlInserted);
                $rowscount = mysqli_insert_id($conn);
                if($rowscount>0) {
                    header("location:home.php");
                }
            }



        }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <style type="text/css">
        .a{
            border: solid 1px #ccc;
            background-color:slateblue;
            color:white;
            width:600px;
            margin-top:10px;
            text-indent:10px;
        }
        .b{
            margin-top:20px;
        }
        .c{
            background-color:slateblue;
            width:100px;
            color:white;
        }
        .error{
            color:red;
        }
    </style>
</head>
<body>
    <form action="" method="post" target="" enctype="multipart/form-data">
        <div class="container">
            <div class="a">
                <h2>Advertisemet Post</h2>
            </div>
        </div>
        
        <div class= container>
            <div class="col-md-12">
                <div class="col-md-6 b">
                    <label for="">Product Title</label>
                    <input type="text" class="form-control" name="txtTitle" id="txtTitleId" value=""/>
                </div>
                <div class="col-md-6 error"> 
                    <?php echo $strError[0];?>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6 b">
                    <label for="">Ads Image</label>
                    <input type="file" class="form-control" name="txtMyFile" id="txtMyFileId" value=""/>
                    <input type="file" class="form-control" name="txtMyFile" id="txtMyFileId" value=""/>
                    <input type="file" class="form-control" name="txtMyFile" id="txtMyFileId" value=""/>
                    <input type="file" class="form-control" name="txtMyFile" id="txtMyFileId" value=""/>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6 b">
                    <label for="">Short Description</label>
                    <textarea name="txtShort" id="txtShortId" cols="60" rows="7"></textarea>
                </div>
                <div class="col-md-6 error"> 
                    <?php echo $strError[1];?>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6 b">
                <label for="">Long Description</label>
                    <textarea name="txtShort1" id="txtShort1Id" cols="60" rows="7"></textarea> 
                </div>
                <div class="col-md-6 error"> 
                    <?php echo $strError[2];?>
                </div>
            </div>
            <div class="col-md-12">
                <div class="col-md-6">
                    <input type="Submit" class="btn btn default c" name="btnSubmit" id="btnSubmitId" value="Submit">
                </div>
            </div>
        </div>
    </form>
</body>
</html>