<div class="entry-content single-page">
    <?php $gia_ban = get_field('gia_ban');
     $mo_ta_ngan = get_field('mo_ta_ngan');
      $dong_xe = get_field('dong_xe');
       $trang_thai = get_field('trang_thai');
        $bao_hanh = get_field('bao_hanh');
        ?>
        <?php if($gia_ban){?>
<div class="thong-tin-san-pham">
    <div class="anh-sp">
        <?php the_post_thumbnail('large'); ?>
    </div>
    <div class="thong-tin-ban-hang">
        <ul>
        <li><span class="label">Giá bán:</span><span class="value gia-ban"> <?php the_field('gia_ban');?></span></li>
        <?php if($mo_ta_ngan){?>
        <li class="mo-ta-ngan"><span class="value"> <?php the_field('mo_ta_ngan');?></span></li>
       <?php }?>
       <?php if($dong_xe){?>
        <li><span class="label">Dòng xe:</span><span class="value dong-xe"> <?php the_field('dong_xe');?></span></li>
         <?php }?>
         <?php if($bao_hanh){?>
        <li><span class="label">Bảo hành:</span><span class="value bao-hanh"> <?php the_field('bao_hanh');?></span></li>
       <?php }?>
         <?php if($trang_thai){?>
        <li><span class="label">Trạng thái:</span><span class="value trang-thai"> <?php the_field('trang_thai');?></span></li>
       <?php }?>
        </ul>
        <div class="nut-dat-hang" style="width:100%; display:inline-block; clear:both">
            <div class="left" style="width:50%; display:inline-block; float:left; text-align: center; padding-right: 8px">
                <a href="tel:0972.939.830" target="blank" class="nut-dat-hang-ngay">Hotline: 0972.939.830</a>
            </div>
              <div class="right" style="width:50%; display:inline-block; float:left; text-align: center; padding-left: 8px" >
                <a href="https://messenger.com/t/joseph.thien.75" target="blank" class="nut-chat-facebook">Chat tư vấn Facebook</a>
            </div>
        </div>
        
    
    </div>
    
</div>
<?php }?>
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
		$category_list = get_the_category_list( __( ' ', 'flatsome' ) );

		/* translators: used between list items, there is a space after the comma */
		$tag_list = get_the_tag_list( '', __( ' ', 'flatsome' ) );


		// But this blog has loads of categories so we should probably display them here.
		if ( '' != $tag_list ) {
			$meta_text = __( '<div class="danh-muc">Danh mục: %1$s</div> <div class="the-tim-kiem">Tags: %2$s</div>', 'flatsome' );
		} else {
			$meta_text = __( '', 'flatsome' );
		}

		printf( $meta_text, $category_list, $tag_list, get_permalink(), the_title_attribute( 'echo=0' ) );
		?>
	</footer><!-- .entry-meta -->
<?php endif; ?>

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
