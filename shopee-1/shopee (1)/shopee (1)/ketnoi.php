<?php
    $connect = mysqli_connect('localhost','root','','ngaymoi');
    if(mysqli_connect_errno()){
        echo "Không thể kết nối,lỗi:".mysqli_connect_errno()."("
        .mysqli_connect_error().")";
    }else{
        //echo "Kết nối thành công";
    }
?>
