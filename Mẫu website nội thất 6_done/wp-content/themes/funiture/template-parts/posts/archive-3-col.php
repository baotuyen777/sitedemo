<?php if ( have_posts() ) : ?>

<?php
	// Create IDS
	$ids = array();
	while ( have_posts() ) : the_post();
		array_push($ids, get_the_ID());
	endwhile; // end of the loop.
	$ids = implode(',', $ids);

	$readmore = __( 'Continue reading <span class="meta-nav">&rarr;</span>', 'flatsome' );
?>

<?php echo do_shortcode('[blog_posts type="masonry" depth="' . flatsome_option('blog_posts_depth') . '" depth_hover="' . flatsome_option('blog_posts_depth_hover') . '" text_align="' . get_theme_mod( 'blog_posts_title_align', 'center' ) . '" columns="3" ids="' . $ids . '"]'); ?>

<?php flatsome_posts_pagination(); ?>

<?php else : ?>

	<?php get_template_part( 'template-parts/posts/content','none'); ?>

<?php endif; ?>

<div class="after-archive">
    <div class="left">
        <?php echo do_shortcode( '[contact-form-7 id="678" title="Yêu cầu tư vấn"]' ); ?>
    </div>
    <div class="right">
        <aside id="text-2" class="widget widget_text"><span class="widget-title "><span>Hỗ trợ trực tuyến</span></span><div class="is-divider small"></div>			<div class="textwidget"><p class="tieu-de">Tư vấn viên</p>
<p><span class="fa fa-phone"></span><span class="thong-tin">Hotline: 0972.939.830</span><br>
<span class="fa fa-phone"></span><span class="thong-tin">Hotline 2: 0123.654.780</span></p>
<p class="tieu-de">Email liên hệ</p>
<p><span class="fa fa-envelope"></span><span class="thong-tin">info.giuseart.com@gmail.com</span></p>
</div>
		</aside>
        <aside id="text-3" class="widget widget_text"><span class="widget-title "><span>Fanpage Facebook</span></span><div class="is-divider small"></div>			<div class="textwidget"><p><iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2Fgiuseartdotcom&amp;tabs=timeline&amp;width=340&amp;height=500&amp;small_header=false&amp;adapt_container_width=true&amp;hide_cover=false&amp;show_facepile=true&amp;appId=948110208640186" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowtransparency="true" allow="encrypted-media"></iframe></p>
</div>
		</aside>
		
    </div>
    <div class="clearboth">
        
    </div>
</div>
