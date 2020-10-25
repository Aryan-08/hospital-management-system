<?php
session_start();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
</head>
<body>
    <?php
    include("../include/header.php");
    include("../include/connection.php");
    $ad = $_SESSION['admin'];

    $query = "SELECT * from admin WHERE username='$ad'";
    $res = mysqli_query($connect,$query);

    while($row = mysqli_fetch_array($res)){
        $username = $row['username'];
        $profile = $row['profile'];
    }
    ?>
    <div class="container-fluid">
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-2" style="margin-left:-30px;">
                    <?php
                    include("sidenav.php");
                    ?>
                </div>
                <div class="col-md-10">
                    <div class="col-md-12">
                        <div class="row">
                            <div class="col-md-6">
                                <h4><?php echo $username;?> Profile</h4>

                                <?php
                                    if(isset($_POST['update'])){
                                        $profile = $_FILES['profile']['name'];

                                        if(empty($profile)){

                                        }else{
                                            $query = "UPDATE admin SET profile='$profile' 
                                            WHERE username='$ad'";
                                            $result = mysqli_query($connect,$query);
                                            if($result){
                                                move_uploaded_file($_FILES['profile']['tmp_name'],"img/$profile");
                                            }
                                        }
                                    }
                                ?>
                                <form method="post" enctype="multipart/form-data">
                                    <?php
                                    echo "<img src= 'img/$profile'
                                     class='col-md-12' style='height:250px;'>";
                                    ?>
                                    <br><br>
                                    <div class="form-group">
                                        <label>UPDATE PROFILE</label>
                                        <input type="file" name="profile" class="form-control">
                                    </div>
                                    <br>
                                    <input type="submit" name="update" value="UPDATE" class="btn btn-success">
                                </form>
                            </div>
                            <div class="col-md-6">
                            <?php
                                if(isset($_POST['change'])){
                                    $uname = $_POST['uname'];
                                    if(empty($uname)){

                                    }else{
                                        $query = "UPDATE admin SET username='$uname' WHERE username='$ad";
                                        $res =  mysqli_query($connect,$query);
                                        if($res){
                                            $_SESSION['admin']  =$uname;
                                        }
                                        
                                    }
                                }
                            
                            ?>
                                    <form metod="post">
                                        <label>Change Username</label>
                                         <input type="text" name="uname" class="form-control" autocomplete="off">
                                         <input type="submit" name="change class="btn btn-success">
                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>