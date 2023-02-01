<?php
/*
Template name: Default Template (Center title)
*/
get_header(); 
?>

<?php do_action( 'flatsome_before_page' ); ?>
<img src="/wp-content/uploads/2019/04/bg34-1.jpg"/>
<div class="row align-center">
<div class="duong-dan container">
    <?php
if ( function_exists('yoast_breadcrumb') ) {
  yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );
}
?></div>
<div class="row page-wrapper">
<div id="content" class="large-12 col" role="main">

		<?php while ( have_posts() ) : the_post(); ?>
					<header class="entry-header text-center">
						<h1 class="entry-title"><?php the_title(); ?></h1>
						<div class="is-divider medium"></div>
					</header>

					<div class="entry-content">
						<?php the_content(); ?>

						<?php if ( comments_open() || '0' != get_comments_number() ){
							comments_template(); } ?>
					</div>
					

		<?php endwhile; // end of the loop. ?>


</div><!-- #content -->
</div><!-- .row -->

<?php get_footer(); ?>