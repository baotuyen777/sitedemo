<?php
/*
Template name: Page - Left sidebar
*/
get_header(); ?>

<?php do_action( 'flatsome_before_page' ); ?>

<div class="container banner-post">
    <div class="banner-post-inner">
    <div class="left">
        <div class="tieu-de-menu">Danh mục</div>
        <?php wp_nav_menu( array(
     'theme_location' => 'banner-nav', // tên location cần hiển thị
     'container' => 'banner-nav', // thẻ container của menu
     'container_class' => 'banner-menu', //class của container
     'menu_class' => 'menu clearfix' // class của menu bên trong
) ); ?>
    </div>
    <div class="right">
        <h1 class="entry-category"><?php the_title(); ?></h1>
    </div>
    <div class="clearboth"></div>
    </div>
    
    
</div>
<div  class="page-wrapper page-left-sidebar">
<div class="row">

<div id="content" class="large-9 right col" role="main">
	<div class="page-inner">
		<?php if(get_theme_mod('default_title', 0)){ ?>
			<header class="entry-header">
				<h1 class="entry-title mb uppercase"><?php the_title(); ?></h1>
			</header><!-- .entry-header -->
		<?php } ?>
		<?php while ( have_posts() ) : the_post(); ?>
			
			<?php the_content(); ?>
			
			<?php if ( comments_open() || '0' != get_comments_number() ){
						comments_template(); } ?>

		<?php endwhile; // end of the loop. ?>
	</div><!-- .page-inner -->
</div><!-- end #content large-9 left -->

<div class="large-3 col col-first col-divided">
<?php get_sidebar(); ?>
</div><!-- end sidebar -->

</div><!-- end row -->
</div><!-- end page-right-sidebar container -->


<?php do_action( 'flatsome_after_page' ); ?>

<?php get_footer(); ?>
