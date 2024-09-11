<?php 
    session_start();
    include "ketnoi.php";
    if(isset($_SESSION['user'])&& ($_SESSION['user']==TRUE)){
		header('Location: index.php');
        die();
	}
?>
<!DOCTYPE html>
<html lang="en">
<?php include "header.php";?>
<body>
    <?php include "heading.php";
        include "menu.php";
    ?>
    <div class="container-login">
        <div class="container-body">
        <?php 
           $TenDangNhap = $_POST['txtUsername'];
           $MatKhau = $_POST['txtPassword'];
           
           if(isset($TenDangNhap)){
               if(isset($MatKhau)){
                   $sql="SELECT * FROM tbl_nguoidung WHERE TenDangNhap='$TenDangNhap' AND MatKhau='$MatKhau'";
                   $danhsach=mysqli_query($connect,$sql);
                   if($dong=mysqli_num_rows($danhsach)==0){
                       echo "<h3>Thông tin tài khoản sai!</h3>";
                   }else{
                       header('Location:index.php');
                   }
               }else{
                   echo "thong tin";
               }
           }else{
                echo "thong tin";
           }
        ?>           
        </div>
    </div>
</body>
</html>