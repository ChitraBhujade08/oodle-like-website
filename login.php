<?php
session_start();
ob_start();
    // Step 1: DB connection
            $conn = mysqli_connect("localhost", "root", "" , "db_classified");
            if(mysqli_connect_errno()){
               // die("DB connection error".mysqli_connect_error());
                trigger_error("DB connection error".mysqli_connect_error());
                
            }   
            $sqlSelectedutype = mysqli_query($conn,"select * from tbl_usertype");

    // Step 2: Create event
                    // echo "<pre>";
                    // print_r($_POST);
                    // echo "</pre>";

                //     Array
                // (
                //     [txtEmail] => admin
                //     [txtPassword] => admin
                //     [btnLogin] => Login
                // )
                $strErrors = array();
                if(isset($_POST["btnLogin"]) && ($_POST["btnLogin"]=="Login")){
                   // echo "*";
                        // Step 3: Create posted variable
                        
                        $username = $_POST["txtEmail"];
                        $password = $_POST["txtPassword"];

                        $usertype_id = $_POST["selUsertype"];

                        // Step 4: Display errors else Pass variable's values to database select....where query
                            if($username== ""){
                                $strErrors[]="Please enter email";
                            }

                            if($password== ""){
                                $strErrors[]="Please enter password";
                            }
                            if($usertype_id== "Select"){
                                $strErrors[]="please select user type";
                            }

                            if(empty($strErrors)){
                                $sqlSelect="Select * from tbl_user where user_name='".$username."'  and  password='".$password."'  and  usertype_id='".$usertype_id."' and is_active ='Y' ";
                                 //exit();
                                $sqlSelected = mysqli_query($conn,$sqlSelect);

                                // Step 5: If user exist with row_count >0 then redirect to welcome page 

                                 $row_count = mysqli_num_rows($sqlSelected);
                                 // step2: creating a registered variable of session
                                 while($list= mysqli_fetch_assoc($sqlSelected)){
                                // echo "<pre>";
                                // print_r($list);
                                // echo "</pre>";

                                // [login_id] => 10
                                // [email] => admin
                                    $_SESSION["LOGINID"]= $list["user_id"];
                                    $_SESSION["LOGINNM"]= $list["user_name"];
                                    $_SESSION["UTYPEID"]= $list["usertype_id"];
                                 }
                                 // exit;
                                 if($row_count>0){
                                    header("location:home.php");
                                 }else{
                                    $strErrors[]="Invalid Username or Password";

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
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <title>Document</title>
    <style type="text/css">
            .outer {
                width: 360px;
                height: 400px;;
                border: solid 1px #ccc;
                margin: 0 auto;
                margin-top: 75px;
                box-shadow: 15px 15px 15px #ccc;
                border-radius:10px;
                
    
            }
            .header {
                border-bottom:solid 1px #ccc;
                background-color:#34568b;
                color:white;
                border-radius:5px;
                text-indent:20px;
                align:center;
                margin-top:10px;
                padding:3px;
            }

            .error {
                background-color:yellow;
                color: #ff0000;
                text-indent: 10px;
                font-size: 14px;
        
            }
            .a{
                margin-top:30px;
                background-color:white;
                line-height:60px;
            }
            .b{
                background-color:orange;
                width:150px;
                color:white;
            }
            .s{
                background-color:lightgrey;

            }
    </style>
</head>
<body class="p-3 m-0 border-0 bd-example">
        <form name="frmLogin" id="frmLoginId" action="" method="post" target="" enctype="multipart/form data">
        <div class="container">
            <div class="col-md-12">
                <div class="row a">
                    <div class="col-md-2"><img src="images/download.png" alt="" width="60px" height="40px"></div>
                    <div class="col-md-6"></div>
                    <div class="col-md-2"><a class="btn btn default b" href="ad.php">Sell Your Stuff</a></div>
                    <div class="col-md-2"><a class="btn btn default b" href="login.php">Login</a></div>
                </div>
            </div>
        </div>
            <div class="container">
                <div class="col-md-4">

                </div>
                <div class="col-md-4 outer s">
                <div class ="text header"> 
                    <h3>Login Form</h3>
                </div>
                <div class="error">
                    <ul>
                        <?php
                            foreach($strErrors as $error){
                        ?>
                        <li type="square">
                            <?php echo $error;?>
                        </li>
                        <?php
                            }
                        ?> 
                    </ul>
                </div>
                <div class="form-group">
                    <label for="">Username:</label>
                    <input type="text" name="txtEmail" id="txtEmaiId" class="form-control" value="" placeholder="Enter Email" autofocus="autofocus" />
                </div>
                <div class="form-group">
                    <label for="">Password:</label> 
                    <input type="password" name="txtPassword" id="txtPasswordId" class="form-control" value="" placeholder="Enter Password" /> 
                </div>
                <div class="form-group">
                    <label for="">User Type:</label>
                        <select class="form-control" name="selUsertype" id="selUsertypeId">
                            <option value="Select">Type</option>
                            <?php  
                                while($usertypeList = mysqli_fetch_assoc($sqlSelectedutype)){
                                    $usertype_id = $usertypeList['usertype_id'];
                                    $usertype = $usertypeList['usertype'];

                                
                            ?>
                            <option value="<?php echo $usertype_id; ?>"><?php echo $usertype; ?></option>
                            <?php 
                                }
                            ?>
                        </select>  
                    </div>
                <div>
                <input type="submit" name="btnLogin" id="btnLoginId" class="btn btn-primary"  value="Login" />
                </div>
                </div>
                <div class="col-md-4">

                </div>
            </div>
        </form> 
</body>
</html>
