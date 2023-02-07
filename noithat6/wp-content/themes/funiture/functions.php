<?php
// Add custom Theme Functions here
// 
add_filter( 'the_content', 'add_something_to_content_filter', 10 );// 10 và thứ tự xuất hiện
 
function add_something_to_content_filter( $content ) {
 
$original_content = $content ; // Nội dung bài viết

	//Nội dung bạn muốn chèn vào trước
$add_after_content = ' <div class="thong-tin-lien-he">
<div class="tieu-de">Thông tin liên hệ:</div>
<ul class="thong-tin">
<li class="ten-cong-ty">Công ty Cổ phần Kiến trúc Xây dựng GiuseArt</li>
<li><span>Liên hệ:</span><span class="info"> Lê Văn Thiện</span></li>
<li><span>Phone:</span><span class="info">  0972939830</span></li>
<li><span>Email:</span> <span class="info"> giuselethien@gmail.com</span></li>
<li><span>Website:</span> <span class="info"> www.giuseart.com</span></li>
</ul>
<div class="right">
Hãy liên hệ với chúng tôi để được tư vấn thi công xây dựng và thiết kế nhà ở, thiết kế biệt thự tân cổ điển, thiêt kế lâu đài kiểu pháp, thiết kế và thi công nội thất, thiết kế khách sạn, thiết kế nhà hàng, thiết kế shop, cửa hàng, showroom …
</div>
<div class="clearboth"></div>
</div>' ;//Nội dung bạn muốn chèn vào sau
$content = $add_before_content . $original_content . $add_after_content ;
 
// trả về giá trị $content.
return $content;
}

//Tạo shortcode
function tao_shortcode() {
	$thu_vien_hinh_anh = get_field('thu_vien_hinh_anh');
	if($thu_vien_hinh_anh){
		echo do_shortcode('[lightslider_looper]');
	};
	$chu_dau_tu = get_field('chu_dau_tu');
	if($chu_dau_tu){
		echo '<div class="tieu-de">';
		echo '<h2>Thông tin công trình</h2>';
		echo '</div>';
   echo '<div class="thong-tin-them">';
		echo '<div class="row1">';
		//chủ đầu tư
		echo '<div class="chu-dau-tu">';			
			echo '<span class="label">Chủ đầu tư:</span>';
			echo '<span class="value">';
				echo get_field('chu_dau_tu');
			echo '</span>';			
		echo '</div>';
		//Địa điểm
		echo '<div class="dia-diem">';
			echo '<span class="label">Địa điểm:</span>';
			echo '<span class="value">';
				echo get_field('dia_diem');
			echo '</span>';
		echo '</div>';
		//Loại hình
		echo '<div class="loai-hinh">';
			echo '<span class="label">Loại hình:</span>';
			echo '<span class="value">';
				echo get_field('loai_hinh');
			echo '</span>';
		echo '</div>';
		//Diện tích khu đất
		echo '<div class="dien-tich-khu-dat">';
			echo '<span class="label">Diện tích khu đất:</span>';
			echo '<span class="value">';
				echo get_field('dien_tich_khu_dat');
			echo '</span>';
		echo '</div>';
		//Diện tích khu đất
		echo '<div class="dien-tich-xay-dung">';
			echo '<span class="label">Diện tích xây dựng:</span>';
			echo '<span class="value">';
				echo get_field('dien_tich');
			echo '</span>';
		echo '</div>';
		//Diện tích xây dựng
		echo '<div class="so-tang">';
			echo '<span class="label">Số tầng:</span>';
			echo '<span class="value">';
				echo get_field('so_tang');
			echo '</span>';
		echo '</div>';
		echo '<div class="clearboth"></div>';
		echo '</div>';
		//Công năng
		echo '<div class="cong-nang">';
			echo '<span class="label">Công năng:</span>';
			echo '<span class="value">';
				echo get_field('cong_nang');
			echo '</span>';
		echo '</div>';
		//Đơn vị thiết kế
		echo '<div class="don-vi-thiet-ke">';
			echo '<span class="label">Đơn vị thiết kế:</span>';
			echo '<span class="value">';
				echo get_field('don_vi_thiet_ke');
			echo '</span>';
		echo '</div>';
		//Tổng mức đầu tư
		echo '<div class="muc-dau-tu">';
			echo '<span class="label">Tổng mức đầu tư:</span>';
			echo '<span class="value">';
				echo get_field('tong_muc_dau_tu');
			echo '</span>';
		echo '</div>';
		//Năm thực hiện
		echo '<div class="nam-thuc-hien">';
			echo '<span class="label">Năm thực hiện:</span>';
			echo '<span class="value">';
				echo get_field('nam_thuc_hien');
			echo '</span>';
		echo '</div>';
		
	echo '</div>';
	}
	else{
		echo '<div class="thong-bao">';
		echo 'Hãy liên hệ với chúng tôi để được tư vấn thi công xây dựng và thiết kế nhà ở, thiết kế biệt thự tân cổ điển, thiêt kế lâu đài kiểu pháp, thiết kế và thi công nội thất, thiết kế khách sạn, thiết kế nhà hàng, thiết kế shop, cửa hàng, showroom …';
		echo '</div>';
	};

}
//Tạo shortcode tên là [test_shortcode] và sẽ thực thi code từ function create_shortcode
add_shortcode( 'thong-tin-them', 'tao_shortcode' );


add_action( 'wp_enqueue_scripts', 'ls_scripts_styles', 20 );
/**
 * LightSlider Scripts
 */
function ls_scripts_styles() {
	wp_enqueue_style( 'lightslidercss', get_stylesheet_directory_uri(). '/css/lightslider.min.css' , array(), '1.0.0', 'all' );
	wp_enqueue_script( 'lightsliderjs', get_stylesheet_directory_uri() . '/js/lightslider.min.js', array( 'jquery' ), '1.0.0', true );
	wp_enqueue_script( 'lightsliderinit', get_stylesheet_directory_uri() . '/js/lightslider-init.js', array( 'lightsliderjs' ), '1.0.0', true );
}


add_shortcode( 'lightslider_looper', 'tl_light_looper' );
function tl_light_looper()  {
// ACF Custom Fields
// tl_slide_images = Gallery Field
$images = get_field('thu_vien_hinh_anh');//add your correct field name
	ob_start();
	
	if( $images ): 
	 ?>
	
		<div class="tl_slide_photo_container">
			<ul id="light-slider" class="image-gallery">
				<?php foreach( $images as $image ): ?>
				<li data-thumb="<?php echo $image['url']; ?>">
					
						<img src="<?php echo $image['url']; ?>" alt="<?php echo $image['alt']; ?>" />
					
				</li>
				<?php endforeach; ?>
		 	</ul>
		</div>
		
	<?php endif; 
		
	return ob_get_clean();
}


//CODE LAY LUOT XEM
function getPostViews($postID){
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
        return "01 lượt xem";
    }
    return $count.' lượt xem';
}
 
// CODE DEM LUOT XEM
function setPostViews($postID) {
    $count_key = 'post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if($count==''){
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    }else{
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}
  
//CODE HIEN THI SO LUOT XEM BAI VIET TRONG DASHBOARDH
add_filter('manage_posts_columns', 'posts_column_views');
add_action('manage_posts_custom_column', 'posts_custom_column_views',5,2);
function posts_column_views($defaults){
    $defaults['post_views'] = __('Views');
    return $defaults;
}
function posts_custom_column_views($column_name, $id){
    if($column_name === 'post_views'){
        echo getPostViews(get_the_ID());
    }
}
function smartline_meta_date_capnhat() {
 
	$time_string = sprintf( '<a href="%1$s" title="%2$s" rel="bookmark"><time class="entry-date published updated" datetime="%3$s">%4$s</time></a>',
		esc_url( get_permalink() ),
		esc_attr( get_the_time() ),
		esc_attr( get_the_date( 'c' ) ),
		esc_html( get_the_modified_date() )
	);
 
	echo '<span class="meta-date-capnhat">' . $time_string . '</span>';
}