<?php include "ketnoi.php";?>
<!DOCTYPE html>
<html>
<?php include "header.php";?>
<body>
	<div class="Vnexpress"></div>
	    <?php include "heading.php"; ?>

	<!-------------------------------End Header------->

	    <?php include "menu.php";?>

	   <!--------------------end menu--------------->
	
	    <div class="container">
	        <div class="grid">

	    	    <div class="container__flexbox">

	    	    	<div class="flexbox__hightlight">

	    	    		<div class="flexbox__hightlight-item1">

	    	    			<div class="hightlight-item1-img">
	    	    				<a href=""><img src="https://i1-vnexpress.vnecdn.net/2021/11/11/bt-gd-nguyen-kim-son-vne-5435-6790-1163-1636587941.jpg?w=680&h=408&q=100&dpr=2&fit=crop&s=L9a_xxIeAqgZwbbvWm0n9w">
	    	    				</a>
	    	    			</div>

	    	    			<div class="hightlight-item1-content">
	    	    				<a href="#"><h3>Bộ trưởng Giáo dục: 'Yêu cầu các Sở kiểm tra tình trạng dạy thêm online'</h3></a>
	    	    				<p>Trước câu hỏi của đại biểu về tình trạng dạy thêm, học thêm ngay cả trong bối cảnh dịch, Bộ trưởng Nguyễn Kim Sơn khẳng định đây là vấn đề cần lên án và sẽ yêu cầu các Sở kiểm tra, ngăn chặn.</p>
	    	    			</div>

	    	    		</div>

	    	    		<div class="flexbox__hightlight-item2">
	    	    			<div class="hightlight-item2-content"><a href="#">Chuyên gia Phan Anh Tú: 'Việt Nam cần tránh mắc bẫy Nhật Bản'</a>
	    	    				<p>Tiền lương trong khu vực doanh nghiệp thời gian tới sẽ có thay đổi căn bản theo hướng lương là giá cả của sức lao động và hài hòa lợi ích, theo Bộ trưởng Lao động Thương binh Xã hội Đào Ngọc Dung.</p>

                            </div>
	    	    			<div class="hightlight-item2-content gachdoc2">
	    	    				<a href="">Chuyên gia Phan Anh Tú: 'Việt Nam cần tránh mắc bẫy Nhật Bản'</a>
	    	    				<p>Tiền lương trong khu vực doanh nghiệp thời gian tới sẽ có thay đổi căn bản theo hướng lương là giá cả của sức lao động và hài hòa lợi ích, theo Bộ trưởng Lao động Thương binh Xã hội Đào Ngọc Dung.</p>
	    	    			</div>
	    	    			<div class="hightlight-item2-content ">
	    	    				<a href="#"> Chuyên gia Phan Anh Tú: 'Việt Nam cần tránh mắc bẫy Nhật Bản'</a>
	    	    				<p>Tiền lương trong khu vực doanh nghiệp thời gian tới sẽ có thay đổi căn bản theo hướng lương là giá cả của sức lao động và hài hòa lợi ích, theo Bộ trưởng Lao động Thương binh Xã hội Đào Ngọc Dung.</p>
	    	    			</div>
	    	    		</div>
	    	    	</div>
	    		    <div class="quangcao-hightlight"></div>
	    	    </div>

	<!------------------------hightlight---------------------------->

	    	    <div class="tintrongngay">
	    	    	<div class="tintonghop">
						
							<?php
								if(isset($_REQUEST['p'])){
									$p = (int)$_REQUEST['p'];
								}else{
									$p=1;
								}
								$start = ($p-1)*14;
								if(isset($_REQUEST['q'])){
									$q=$_REQUEST['q'];
									$where = "WHERE TieuDe LIKE '%$q%'";
								}else{
									$where = "WHERE 1 ";
								}
								$sql = "SELECT * FROM tbl_baiviet $where LIMIT $start,14";
								$danhsach = mysqli_query($connect,$sql);
								while($dong=mysqli_fetch_array($danhsach)){
									echo '<div class="tintonghop-list">
											<div class="tintonghop-img">
												<img src = "'.$dong['MinhHoa'].'">
											</div>
											<div class="tintonghop-item">
												<h3><a href="">'.$dong['TieuDe'].'</a></h3>
												<p>'.$dong['TomTat'].'</p>
											</div>
										</div>';
										}
							?>
							<div class="phantrang">
							<?php
								$sql = "SELECT * FROM tbl_baiviet $where";
								$total=mysqli_num_rows(mysqli_query($connect,$sql));
								$totalPage = ceil($total/14);
								for($i=1;$i<=$totalPage;$i++){
									if(($i!=$p)&&isset($q)) echo "<font size=5><div class='phantrang-item'><a href='index.php?p=$i&q=$q'>$i</a></div></font>";
									elseif(($i!=$p)&&($q='')) echo "<font size=5><div class='phantrang-item'><a href='index.php?p=$i'>$i</a></div></font>";
									elseif(($i!=$p)) echo "<font size=5><div class='phantrang-item'><a href='index.php?p=$i'>$i</a></div></font>";
									else echo "<font size = 5><div class='phantrang-item'>$i</div></font>";
								}
							 ?></div>
					<style>
						.phantrang{
							display:flex;
							margin:0 50%;
						}
						.phantrang-item{
							padding: 5px;
						}
						.phantrang-item a{
							text-decoration:none;
						}
					</style>	    		
	  <!-------------------------------------------------->
	    	    		
	    	    	</div>



<!-----------------tin bên tay trái------------------>



	    	    	<div class="tinmoinhat">
	    	    	    <div class="tinmoinhat-section gachdoc3">
	    	    	    	<h2>tin mới nhất</h2>
	    	    	    </div>
	    	    	    <?php 
							$sql_1="SELECT * FROM tbl_baiviet";
							$danhsach1=mysqli_query($connect,$sql_1);
							while($dong=mysqli_fetch_array($danhsach1)){
								if($dong['NgayDang']>'2021-12-10 00:00:00'){
									echo '<div class="tinmoinhat-item">
											<div class="tinmoinhat-item-img">
												<a href=""><img src="'.$dong['MinhHoa'].'" width = 100px height=56px></a>
											</div>
											<div class="tinmoinhat-item-section">
												<a href=""><h4>'.$dong['TieuDe'].'</h4></a>
											</div>
										</div>
									';
								}
							}
						?>
	    	    	    

<!---------------------------------------------------------->	    	    	    
	    	    	    <div class="tinmoinhat-quangcao">
	    	    	    	<img src="http://dev1.mypagevn.com/star1/wp-content/uploads/2018/07/guy-photoshopped-himself-oscars-best-picture-nominee-poster-gmadjar-2-58c01141d5914-700-1489128472541.jpg">
	    	    	    </div>
	    	    	    <div class="tinmoinhat-section gachdoc3">
	    	    	    	<h2>được quan tâm nhất</h2>
	    	    	    </div>
						<?php 
							$sql_2="SELECT * FROM tbl_baiviet";
							$danhsach2=mysqli_query($connect,$sql_2);
							while($dong=mysqli_fetch_array($danhsach2)){
								if($dong['LuotXem']>=50){
									echo '<div class="tinmoinhat-item">
											<div class="tinmoinhat-item-img">
												<a href=""><img src="'.$dong['MinhHoa'].'" width = 100px height=56px></a>
											</div>
											<div class="tinmoinhat-item-section">
												<a href=""><h4>'.$dong['TieuDe'].'</h4></a>
											</div>
										</div>
									';
								}
							}
						?>
	    	    	    
	    	    	    <div class="tinmoinhat-quangcao">
	    	    	    	<img src="http://dev1.mypagevn.com/star1/wp-content/uploads/2018/07/hinh-nen-ay59-fast-and-furious-8-poster-film-illustration-art-34-iphone-6-plus-wallpaper.jpg">
	    	    	    </div>
	    	    	    <div class="tinmoinhat-quangcao">
	    	    	    	<img src="http://dev1.mypagevn.com/star1/wp-content/uploads/2018/07/p4.jpg">
	    	    	    </div>
	    	    	</div>
	    	    </div>

<!---------------------------------------------------------->

	    	    <div class="anhnoibat">
	    	    	<div class="tinmoinhat-section gachdoc3"
	    	    		style="margin-left: -26px;margin-top: 32px;">
	    	    	    	<h2>Ảnh</h2></div>
	    	    	<div class="anhnoibat-list">
	    	    		<div class="list-img">
	    	    			<a href="">
	    	    				<img src="https://i1-vnexpress.vnecdn.net/2021/11/10/dji-0984-jpg-1636508488-1636525536.jpg?w=900&h=540&q=100&dpr=2&fit=crop&s=wIYmyK-5GDluqFmqe2aJLw">
	    	    			</a>
	    	    		</div>
	    	    		<div class="list-content">
	    	    			<div class="content-item">
	    	    			    <h3>Công trình hầm chui thứ tư ở thủ đô</h3>
	    	    			    <a href=""><p>Hầm chui Lê Văn Lương - Khuất Duy Tiến được đầu tư gần 700 tỷ đồng, đang bước vào giai đoạn thi công hầm chính.</p></a>
                            </div>
	    	    			<div class="content-item content-color">
	    	    			    <h3>Công trình hầm chui thứ tư ở thủ đô</h3>
	    	    			    <a href=""><p>Hầm chui Lê Văn Lương - Khuất Duy Tiến được đầu tư gần 700 tỷ đồng, đang bước vào giai đoạn thi công hầm chính.</p></a>
	    	    		    </div>
	    	    		</div>
	    	    	</div>
	    	    </div>
	        </div>
	    </div>
	    <?php include "footer.php"; ?>
	</div>
	

</body>	

</html>
<?php
//bổ sung bảng người dùng
//bổ sung bảng chủ đề
//bảng phân quyền