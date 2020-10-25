<?php

    session_start();
    include('include/connection.php');
    if(isset($_POST['login'])){
        $username = $_POST['uname'];
        $password = $_POST['password'];

        $error = array();
        if(empty($username)){
            $error['admin'] = "Enter Username";
        }else if(empty($password)){
            $error['admin'] = "Enter Password";
        }
        if(count($error)==0){
            $query = "SELECT * FROM admin WHERE username='$username' AND password='$password'";
            $result = mysqli_query($connect,$query);

            if(mysqli_num_rows($result)==1){
                echo "<script>alert('Logged in successfully.')</script>";
                $_SESSION['admin']  = $username;
                header("Location: admin/index.php");
                exit();
            }
            else{
                echo "<script>alert('Invalid Username or Password.')</script>";
            }
        }
    }


?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin - Login</title>
</head>
<body style="background-repeat:no-repeat;background-size:cover;background: -webkit-linear-gradient(left, #009FFD, #2A2A72
    );"> 
    <?php
        include("include/header.php");
    ?>
    <div style="margin-top: 50px"></div>
    <div class="container">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3"></div>
                <div class="col-md-6 jumbotron">
                    <img src="img/admin.jpg" class="col-md-12" alt="Admin">
                    <form method="post" class="my-2">
                        <div>
                            <?php
                                if(isset($error['admin'])){
                                    $sh = $error['admin'];
                                    $show = "<h4 class='alert alert-danger'>$sh</h4>";
                                }else{
                                    $show = "";
                                }
                                echo $show;
                            ?>
                        </div>
                        <div class="form-group">
                            <label>Username: </label>
                            <input type="text" name="uname"class="form-control" autocomplete="off" placeholder="Enter Username">
                        </div>
                        <div class="form-group">
                            <label>Password: </label>
                            <input type="password" name="password" class="form-control" placeholder="Enter Password">
                        </div>
                        <input type="submit" name="login" class="btn btn-success" value="Login">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>