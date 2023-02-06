<div class="product-container">
<div class="product-main">
<div class="row mb-0 content-row">


	<div class="product-gallery large-<?php echo flatsome_option('product_image_width'); ?> col">
	<?php
		/**
		 * woocommerce_before_single_product_summary hook
		 *
		 * @hooked woocommerce_show_product_sale_flash - 10
		 * @hooked woocommerce_show_product_images - 20
		 */
		do_action( 'woocommerce_before_single_product_summary' );
	?>
	</div>

	<div class="product-info summary col-fit col-divided col entry-summary <?php flatsome_product_summary_classes();?>">

		<?php
			/**
			 * woocommerce_single_product_summary hook
			 *
			 * @hooked woocommerce_template_single_title - 5
			 * @hooked woocommerce_template_single_rating - 10
			 * @hooked woocommerce_template_single_price - 10
			 * @hooked woocommerce_template_single_excerpt - 20
			 * @hooked woocommerce_template_single_add_to_cart - 30
			 * @hooked woocommerce_template_single_meta - 40
			 * @hooked woocommerce_template_single_sharing - 50
			 */
			do_action( 'woocommerce_single_product_summary' );
		?>

	</div><!-- .summary -->

	<div id="product-sidebar" class="col large-3 hide-for-medium <?php flatsome_sidebar_classes(); ?>">
		<?php
			do_action('flatsome_before_product_sidebar');
			/**
			 * woocommerce_sidebar hook
			 *
			 * @hooked woocommerce_get_sidebar - 10
			 */
			if (is_active_sidebar( 'product-sidebar' ) ) {
					dynamic_sidebar('product-sidebar');
			} else if(is_active_sidebar( 'shop-sidebar' )) {
					dynamic_sidebar('shop-sidebar');
			}
		?>
	</div>

</div><!-- .row -->
</div><!-- .product-main -->
<div class="thong-tin-bo-sung">
    <div class="container">
        <div class="custom-form-1">
		        <div class="left">
		            <h3>Thông tin cơ bản</h3>
		            <?php $loai_vang = get_field('loai_vang');
		                  $xuat_xu = get_field('xuat_xu');
		                  $nien_vu = get_field('nien_vu');
		                  $giong_nho = get_field('giong_nho');
		                  $dong_chai = get_field('dong_chai');
		                  $dung_tich = get_field('dung_tich');
		                  $nong_do = get_field('nong_do');
		                  $thoi_gian_u = get_field('thoi_gian_u');
		                  $luu_y = get_field('luu_y');?>
		              <ul>
		                  <li><span class="label">Loại vang:</span><span class="gia-tri"> <?php if($loai_vang) the_field('loai_vang'); ?></span></li>
		                  <li><span class="label">Xuất xứ:</span><span class="gia-tri"> <?php if($xuat_xu) the_field('xuat_xu'); ?></span></li>
		                  <li><span class="label">Niên vụ:</span><span class="gia-tri"> <?php if($nien_vu) the_field('nien_vu'); ?></span></li>
		                  <li><span class="label">Giống nho:</span><span class="gia-tri"> <?php if($giong_nho) the_field('giong_nho'); ?></span></li>
		                  <li><span class="label">Đóng chai:</span><span class="gia-tri"> <?php if($dong_chai) the_field('dong_chai'); ?></span></li>
		                  <li><span class="label">Thời gian ủ:</span><span class="gia-tri"> <?php if($thoi_gian_u) the_field('thoi_gian_u'); ?></span></li>
		                  <li><span class="label">Dung tích:</span><span class="gia-tri"> <?php if($dung_tich) the_field('dung_tich'); ?></span></li>
		                  <li><span class="label">Nồng độ:</span><span class="gia-tri"> <?php if($nong_do) the_field('nong_do'); ?></span></li>
		              </ul>
		            
		            <?php if($thuong_thuc) the_field('thuong_thuc'); ?>
		            
		        </div>
		        <div class="right">
		            <h3>Thưởng thức</h3>
		            <?php $thuong_thuc = get_field('thuong_thuc'); ?>
		            <?php if($thuong_thuc) the_field('thuong_thuc'); ?>
		        </div>
		        <div class="clearboth"></div>
		    </div>
		    <?php if($luu_y):?>
		    <div class="luu-y">
		        <h3>Một số lưu ý:</h3>
		        <?php the_field('luu_y'); ?>
		    </div>
		    <?php endif; ?>
		    
    </div>
</div>
<div class="product-footer">
	<div class="container">
		<?php
			/**
			 * woocommerce_after_single_product_summary hook
			 *
			 * @hooked woocommerce_output_product_data_tabs - 10
			 * @hooked woocommerce_upsell_display - 15
			 * @hooked woocommerce_output_related_products - 20
			 */
			do_action( 'woocommerce_after_single_product_summary' );
		?>
	</div><!-- container -->
</div><!-- product-footer -->
</div><!-- .product-container -->
