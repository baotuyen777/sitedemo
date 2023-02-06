<div class="breadcrumbs">
    <?php
if ( function_exists('yoast_breadcrumb') ) {
  yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );
}
?>
</div>

<?php
if ( is_single() ) {
	echo '<h1 class="entry-title">' . get_the_title() . '</h1>';
} else {
	echo '<h2 class="entry-title"><a href="' . get_the_permalink() . '" rel="bookmark" class="plain">' . get_the_title() . '</a></h2>';
}
?>

<div class="tag-meta-post"><?php setPostViews(get_the_ID()); ?><span class="fa fa-eye"></span><span class="luot-xem">
<?php echo getPostViews(get_the_ID()); ?> </span><span class="fa fa-clock-o"></span><span class="meta-date-capnhat"><?php echo smartline_meta_date_capnhat(); ?></span><span class="fa fa-folder"></span><span class="danh-muc"><?php echo the_category();?></span></div>

<?php
$single_post = is_singular( 'post' );
if ( $single_post && get_theme_mod( 'blog_single_header_meta', 1 ) ) : ?>
	<div class="entry-meta uppercase is-xsmall">
		<?php flatsome_posted_on(); ?>
	</div><!-- .entry-meta -->
<?php elseif ( ! $single_post && 'post' == get_post_type() ) : ?>
	<div class="entry-meta uppercase is-xsmall">
		<?php flatsome_posted_on(); ?>
	</div><!-- .entry-meta -->
<?php endif; ?>
