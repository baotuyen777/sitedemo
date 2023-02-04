<?php 
$gioi_thieu_don_hang=get_field('gioi_thieu_don_hang');
$tieu_de_don_hang=get_field('tieu_de_don_hang');
$so_luong_tiep_nhan=get_field('so_luong_tiep_nhan');
$noi_lam_vien=get_field('noi_lam_vien');
$nganh_nghe=get_field('nganh_nghe');
$thoi_han_hop_dong=get_field('thoi_han_hop_dong');
$gioi_tinh=get_field('gioi_tinh');
$do_tuoi=get_field('do_tuoi');
$trinh_do_van_hoa=get_field('trinh_do_van_hoa');
$yeu_cau_tay_nghe=get_field('yeu_cau_tay_nghe');
$hinh_anh=get_field('hinh_anh');
$luong_thang=get_field('luong_thang');
$gio_lam_viec=get_field('gio_lam_viec');
$ngay_nghi=get_field('ngay_nghi');
$tang_ca=get_field('tang_ca');
$bao_hiem=get_field('bao_hiem');
$vay_von=get_field('vay_von');
$giay_to_can_thiet_1=get_field('giay_to_can_thiet_1');
$giay_to_can_thiet_2=get_field('giay_to_can_thiet_2');
$giay_to_can_thiet_3=get_field('giay_to_can_thiet_3');
$giay_to_can_thiet_4=get_field('giay_to_can_thiet_4');
$giay_to_can_thiet_5=get_field('giay_to_can_thiet_5');
$han_nop_ho_so=get_field('han_nop_ho_so');
$du_kien_thi_tuyen=get_field('du_kien_thi_tuyen');
$nhap_canh_du_kien=get_field('nhap_canh_du_kien');
$thi_tuyen_1=get_field('thi_tuyen_1');
$thi_tuyen_2=get_field('dthi_tuyen_2');
$thi_tuyen_3=get_field('thi_tuyen_3');
$thi_tuyen_4=get_field('thi_tuyen_4');
$size = 'full'; // (thumbnail, medium, large, full or custom size)
?>
<!--Giới thiệu đơn hàng-->
<?php if( $gioi_thieu_don_hang ) {?>
<div class="gioi-thieu-don-hang">
<?php echo $gioi_thieu_don_hang ?>
</div>
<?php }?>

<!--Tiêu đề đơn hàng-->
<?php if($tieu_de_don_hang) {?>
<div class="tieu-de-don-hang">
    <h2>Thông tin chi tiết đơn hàng</br><?php the_field('tieu_de_don_hang')?></h2>
    <span class="des">
        Dưới đây là thông tin chi tiết đơn hàng <?php the_field('tieu_de_don_hang')?> các bạn có thể tham khảo.</br>
Mọi thông tin thắc mắc cần hỗ trợ tư vấn vui lòng liên hệ trực tiếp với hỗ trợ viên của công ty để đc giải đáp.</span>
</div>
<?php }?>
<!--Nội dung tuyển dụng-->
<?php if($so_luong_tiep_nhan){?>
<div class="noi-dung-tuyen-dung khoi-noi-dung">
    <h3>Nội dung tuyển dụng</h3>
    <ul>
       <li><span class="label">Số lượng tiếp nhận:</span><span class="value so-luong-tiep-nhan"> <?php the_field('so_luong_tiep_nhan')?></span> </li>
       <?php if($noi_lam_vien) {?>
       <li><span class="label">Nơi làm việc:</span><span class="value noi-lam-viec">
           <?php the_field('noi_lam_vien')?></span> </li>
       <?php }?>
       <?php if($nganh_nghe){?>
       <li><span class="label">Ngành nghề:</span><span class="value nganh-nghe">
           <?php the_field('nganh_nghe')?></span> </li>
       <?php }?>
       <?php if($thoi_han_hop_dong){?>
       <li><span class="label">Thời hạn hợp đồng:</span><span class="value thoi-han-hop-dong">
           <?php the_field('thoi_han_hop_dong')?></span> </li>
       <?php }?>
    </ul>
</div>
<?php }?>

<!--Điều kiện tuyển dụng-->
<?php if($gioi_tinh) {?>
<div class="dieu-kien-tuyen-dung khoi-noi-dung">
    <h3>Điều kiện tuyển dụng</h3>
    <ul>
       <li><span class="label">Giới tính:</span><span class="value gioi-tinh"> <?php the_field('gioi_tinh')?></span> </li>
       <?php if($do_tuoi){?>
       <li><span class="label">Độ tuổi:</span><span class="value do-tuoi">
           <?php the_field('do_tuoi')?></span> </li>
       <?php }?>
       <?php if($trinh_do_van_hoa) {?>
       <li><span class="label">Trình độ văn hóa:</span><span class="value trinh-do-van-hoa">
           <?php the_field('trinh_do_van_hoa')?></span> </li>
       <?php }?>
       <?php if($yeu_cau_tay_nghe) {?>
       <li><span class="label">Yêu cầu tay nghề:</span><span class="value yeu-cau-tay-nghe">
           <?php the_field('yeu_cau_tay_nghe')?></span> </li>
       <?php }?>
    </ul>
</div>
<?php }?>

<!--Một số hình ảnh-->
<?php if($hinh_anh) {?>
<div class="mot-so-hinh-anh khoi-noi-dung">
    <h3>Một số hình ảnh công ty, xí nghiệp tiếp nhận lao động Việt Nam</h3>
    <ul>
        <?php foreach( $hinh_anh as $hinh_anh ): ?>
            <li>
           <img src="<?php echo $hinh_anh['sizes']['large']; ?>" alt="<?php echo $hinh_anh['alt']; ?>" />
<p class="img-caption"><?php echo $hinh_anh['caption']; ?></p>
            </li>
        <?php endforeach; ?>
    </ul>
    
</div>
<?php }?>

<!--Chế độ phúc lợi-->
<?php if($luong_thang) {?>
<div class="che-do-phuc-loi khoi-noi-dung">
    <h3>Chế độ phúc lợi</h3>
    <ul>
       <li><span class="label">Lương tháng:</span><span class="value luong-thang"> <?php the_field('luong_thang')?></span> </li>
       <?php if($gio_lam_viec) {?>
       <li><span class="label">Giờ làm việc:</span><span class="value gio-lam-viec">
           <?php the_field('gio_lam_viec')?></span> </li>
       <?php }?>
       <?php if($ngay_nghi){?>
       <li><span class="label">Ngày nghỉ:</span><span class="value ngay-nghi">
           <?php the_field('ngay_nghi')?></span> </li>
       <?php }?>
       <?php if($tang_ca) {?>
       <li><span class="label">Tăng ca:</span><span class="value tang-ca">
           <?php the_field('tang_ca')?></span> </li>
       <?php }?>
       <?php if($bao_hiem) {?>
       <li><span class="label">Chế độ bảo hiểm:</span><span class="value bao-hiem">
           <?php the_field('bao_hiem')?></span> </li>
       <?php }?>
       <?php if($vay_von) {?>
       <li><span class="label">Chính sách vay vốn:</span><span class="value vay-von">
           <?php the_field('vay_von')?></span> </li>
       <?php }?>
    </ul>
</div>
<?php }?>

<!--Hồ sơ và thời gian dự kiến-->
<?php if($giay_to_can_thiet_1){?>
<div class="ho-so khoi-noi-dung">
    <h3>Hồ sơ và mốc thời gian dự kiến</h3>
    <h4>A. Hồ sơ</h4>
    <ul>
       <li><?php the_field('giay_to_can_thiet_1')?></li>
       <?php if($giay_to_can_thiet_2) {?>
       <li><?php the_field('giay_to_can_thiet_2')?></li>
       <?php }?>
       <?php if($giay_to_can_thiet_3) {?>
        <li><?php the_field('giay_to_can_thiet_3')?></li>
       <?php }?>
    </ul>
    <h4>B. Thời gian dự kiến</h4>
    <ul>
        <?php if($han_nop_ho_so) {?>
       <li><span class="label">Hạn nộp hồ sơ:</span><span class="value han-nop-ho-so"> <?php the_field('han_nop_ho_so')?></span></li>
       <?php }?>
       <?php if($du_kien_thi_tuyen) {?>
       <li><span class="label">Dự kiến thi tuyển:</span><span class="value du-kien-thi-tuyen"> <?php the_field('du_kien_thi_tuyen')?></span></li>
       <?php }?>
       <?php if($nhap_canh_du_kien)  {?>
       <li><span class="label">Nhập cảnh dự kiến:</span><span class="value nhap-canh-du-kien"> <?php the_field('nhap_canh_du_kien')?></span></li>
       <?php }?>
       <?php if($dao_tao_du_kien) {?>
       <li><span class="label">Đào tạo dự kiến:</span><span class="value dao-tao-du-kien"> <?php the_field('dao_tao_du_kien')?></span></li>
       <?php }?>
    </ul>
</div>
<?php }?>


<!--Tổ chức thi tuyển-->
<?php if($thi_tuyen) {?>
<div class="thi-tuyen khoi-noi-dung">
    <h3>Thi tuyển</h3>
    <p><?php the_field('thi_tuyen')?></p>
</div>
<?php }?>

<div class="entry-content single-page">
	<?php the_content(); ?>

	<?php
	wp_link_pages( array(
		'before' => '<div class="page-links">' . __( 'Pages:', 'flatsome' ),
		'after'  => '</div>',
	) );
	?>

	<?php if ( get_theme_mod( 'blog_share', 1 ) ) {
		// SHARE ICONS
		echo '<div class="blog-share text-center">';
		echo '<div class="is-divider medium"></div>';
		echo do_shortcode( '[share]' );
		echo '</div>';
	} ?>
</div><!-- .entry-content2 -->

<?php if ( get_theme_mod( 'blog_single_footer_meta', 1 ) ) : ?>
	<footer class="entry-meta text-<?php echo get_theme_mod( 'blog_posts_title_align', 'center' ); ?>">
		<?php
		/* translators: used between list items, there is a space after the comma */
		$category_list = get_the_category_list( __( ', ', 'flatsome' ) );

		/* translators: used between list items, there is a space after the comma */
		$tag_list = get_the_tag_list( '', __( ', ', 'flatsome' ) );


		// But this blog has loads of categories so we should probably display them here.
		if ( '' != $tag_list ) {
			$meta_text = __( '<div class="danh-muc">Danh mục: %1$s</div><div class="the-tim-kiem">Thẻ tìm kiếm: %2$s</div>', 'flatsome' );
		} else {
			$meta_text = __( '', 'flatsome' );
		}

		printf( $meta_text, $category_list, $tag_list, get_permalink(), the_title_attribute( 'echo=0' ) );
		?>
	</footer><!-- .entry-meta -->
<?php endif; ?>
<!-- Thông tin - form đăng ký -->
<div class="thong-tin-form-cuoi-trang">
    <div class="left">
        <div class="col-inner">
        <h3>Phòng tuyển dụng <br/>Xuất khẩu lao động Đài Loan</h3>
        <p class="des">Địa chỉ: Gần bến xe Mỹ Đình - Từ Liêm - Hà Nội<br/>(Đối diện bến xe Mỹ Đình)</p>
        <p class="thong-tin">
            Mr. Nguyễn Hưng <br/>
            Email: <a href="mailto:info@vieclamdailoan.com" target="blank">info@vieclamdailoan.com</a>
        </p>
        <p class="social-row">Hỗ trợ tư vấn: 24/7. <a href="tel:0972939830" target="blank">Call</a>, <a href="https://messenger.com/t/joseph.thien.75" target="blank">Messenger</a>, <a href="https://zalo.me/0972939830" target="blank">Chat Zalo</a></p>
        </div>
    </div>
    <div class="right">
        <div class="col-inner">
        <p>Mọi thắc mắc về chương trình XKLĐ ĐÀI LOAN và cần được giải đáp?</p>
        <p>Hãy NHẬP SỐ ĐIỆN THOẠI và yêu cầu gọi lại để được cán bộ tư vấn của công ty liên lạc hỗ trợ.</p>
        
        <?php echo do_shortcode( '[contact-form-7 id="565" title="Liên hệ tư vấn"]' ); ?>
</div>
    </div>
</div>

<?php if ( get_theme_mod( 'blog_author_box', 1 ) ) : ?>
	<div class="entry-author author-box">
		<div class="flex-row align-top">
			<div class="flex-col mr circle">
				<div class="blog-author-image">
					<?php
					$user = get_the_author_meta( 'ID' );
					echo get_avatar( $user, 90 );
					?>
				</div>
			</div><!-- .flex-col -->
			<div class="flex-col flex-grow">
				<h5 class="author-name uppercase pt-half">
					<?php echo esc_html( get_the_author_meta( 'display_name' ) ); ?>
				</h5>
				<p class="author-desc small"><?php echo esc_html( get_the_author_meta( 'user_description' ) ); ?></p>
			</div><!-- .flex-col -->
		</div>
	</div>
<?php endif; ?>

<?php if ( get_theme_mod( 'blog_single_next_prev_nav', 1 ) ) :
	flatsome_content_nav( 'nav-below' );
endif; ?>
