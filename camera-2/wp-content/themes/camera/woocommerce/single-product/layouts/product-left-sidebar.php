<div class="product-container">
<div class="product-main">
<div class="row content-row mb-0">

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

	<div class="product-info summary col col-fit entry-summary <?php flatsome_product_summary_classes();?>">

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

	<div id="product-sidebar" class="col col-divided large-3 col-first hide-for-medium <?php flatsome_sidebar_classes(); ?>">
		<div class="sidebar-inner">
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
		</div><!-- .sidebar-inner -->
	</div>

</div><!-- .row -->
</div><!-- .product-main -->

<div class="product-footer">
	<div class="container">
	    <?php $chinh_sach = get_field('chinh_sach');
	    $bao_hanh = get_field('bao_hanh');
	    $thanh_toan = get_field('thanh_toan');
	    $van_chuyen = get_field('van_chuyen');
	    $qua_tang_1 = get_field('qua_tang_1');
	    $qua_tang_2 = get_field('qua_tang_2');
	    $qua_tang_3 = get_field('qua_tang_3');
	    $qua_tang_4 = get_field('qua_tang_4');
	    $qua_tang_5 = get_field('qua_tang_5');
	    ?>
	    <?php if($chinh_sach) {?>
	    <div class="thong-tin-ban-hang">
	        <div class="left">
	            <h3>Thông tin bán hàng</h3>
	            <ul><?php if($chinh_sach) {?>
	                <li> <span class="label">Chính sách:</span><span class="gia-tri"> <?php the_field('chinh_sach'); ?></span></li><?php }?>
	                <li> <span class="label">Bảo hành:</span><span class="gia-tri"> <?php the_field('bao_hanh'); ?> tháng</span></li>
	                <li> <span class="label">Thanh toán:</span><span class="gia-tri"> <?php the_field('thanh_toan'); ?></span></li>
	                <li> <span class="label">Vận chuyển:</span><span class="gia-tri"> <?php the_field('van_chuyen'); ?></span></li>
	                <li> <span class="label">Lắp đặt:</span><span class="gia-tri"> <?php the_field('lap_dat'); ?></span></li>
	            </ul>
	        </div>
	        <div class="right">
	            <h3>Khuyến mại hot nhất:</h3>
	            <ul>
	                <?php if($qua_tang_1) {?>
	                <li> <span class="gift"><?php the_field('qua_tang_1'); ?></span></li><?php }?>
	                <?php if($qua_tang_2) {?>
	                <li> <span class="gift"><?php the_field('qua_tang_2'); ?></span></li><?php }?>
	                <?php if($qua_tang_3) {?>
	                <li> <span class="gift"><?php the_field('qua_tang_3'); ?></span></li><?php }?>
	                <?php if($qua_tang_4) {?>
	                <li> <span class="gift"><?php the_field('qua_tang_4'); ?></span></li><?php }?>
	                <?php if($qua_tang_5) {?>
	                <li> <span class="gift"><?php the_field('qua_tang_5'); ?></span></li><?php }?>
	            </ul>
	        </div>
	        <div class="clearboth"></div>
	    </div><?php }?>
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
