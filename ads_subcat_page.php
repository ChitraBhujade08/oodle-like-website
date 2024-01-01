<?php
$conn = mysqli_connect("localhost", "root", "" , "db_classified");
    if(mysqli_connect_errno()){
       // die("DB connection error".mysqli_connect_error());
        trigger_error("DB connection error".mysqli_connect_error());
        
    }
            //  echo "<pre>";
            //  print_r($_POST);
            //  echo "</pre>";
           
            //  Array
            //  (
            //      [txtSearch] => chitra
            //      [dropdown3] => 1
            //      [btnSearch] => Search
            //  )

            $sqlSelectCity= "select * from tbl_city";
            $sqlSelectedCity = mysqli_query($conn,$sqlSelectCity);  
            //"Select * ,count(*) as subcat_count from tbl_subcategory"
        

        $sqlSelectsubCat = "Select *  from tbl_subcategory";
 
    //$sqlSelected=mysqli_query($conn,$sqlSelect);
    $sqlSelectedsubCat=mysqli_query($conn,$sqlSelectsubCat);
 

    
    

    $strErrors = array();

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
        .outer {
            width: 250px;
            height: 82px;
            border: solid 1px #ccc;
            margin: 0 auto;
            margin-top: 75px;
            box-shadow: 15px 15px 15px #ccc;
            border-radius:10px;
            background-color:white;
            margin-left:20px;
        }
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
            border-radius:10px;
        }
        .inbox1{
            float: left;
            margin-top: 10px;
            margin-left: 20px;
            color:black;
            font-size:13px;
           

        }
        .inbox2{
            float: left;
        }
        .d{
            background-color:orange;
            color:white;  
        }
    .ab{
        margin-top:40px;
        background-color:orange;
        color:white;
    }
    </style>
    <script type="text/javascript">
            function redirect(){
                window.location.href="home.php";
              //  window.location="home.php";
            }

    </script>
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
            <div clas="col-md-12">
                <div class="row a">
                    <div class="col-md-6">
                        <input type="text" name="txtSearch" id="txtSearchId" class="form-control" value="" placeholder="Search">
                    </div>
                    <div class="col-md-1"><span>In</span></div>
                    <div class="col-md-3">
                        <select class="form-control" name="dropdown3" id="dropdownmMenu1">
                            <option value="0">Select</option>
                            <?php
                            while($citylist = mysqli_fetch_assoc($sqlSelectedCity)){
                                $city_name=$citylist['city_name'];
                                $city_id=$citylist['city_id'];
                            
                            ?>
                            <option value="<?php echo $city_id; ?>"><?php echo $city_name; ?></option>
                            <?php
                            }
                            ?>
                        </select>
                    </div>
                    <div class="col-md-2">
                        <input type="submit" class="btn btn default" name="btnSearch" id="btnSearchId" value="Search"/>
                    </div>
                </div>
            </div>
            
            <div class="col-md-12">
                <div class="row a">
                    <?php  
                        $count=1;
                         while($list = mysqli_fetch_assoc($sqlSelectedsubCat)){
                            $subcat_icon = $list["subcat_icon"];
                            $subcategory_id = $list["subcategory_id"];
                            $subcategory_name = $list["subcategory_name"];
                            $subcat_count =0; // $list["subcat_count"];
                            $category_id=$list["category_id"];

                    ?>   

                    <div class="col-md-3 outer">
                        <div class="inbox2"><img src="images/<?php echo $subcat_icon;?>" alt="" width="60px" height="80px"></div>
                        <div class="inbox1"><a href="product_ads_page.php?subcatid=<?php echo $subcategory_id;?>&&catid=<?php echo $category_id;?>"><?php echo $subcategory_name;?>( <?=$subcat_count;?>)</a></div>
                    </div>
                    <?php
                    $count++;
                         }
                    
                    ?>   
                </div>
            </div>
        </div>
        
        <div class="container">
            <div class="col-md-12">
                <div class="col-md-5"></div>
                <div class="col-md-3"><input type="button" class="btn btn default ab" name="btnCategory" id="btnCategoryId" value="View All categories"  onclick="redirect()"></div>
                <div class="col-md-4"></div>
            </div>   
        </div>
    </form>
</body>
</html>