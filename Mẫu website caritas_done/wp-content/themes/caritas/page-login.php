<?php
/*
 * Template Name: Login Page
 */
get_header(); ?>

<?php do_action( 'flatsome_before_page' ); ?>

<div class="page-wrapper page-right-sidebar">
<div class="row">

<div id="content" class="large-9 left col col-divided" role="main">
            <div class="breadcrumbs">
<?php
if ( function_exists('yoast_breadcrumb') ) {
yoast_breadcrumb('
<p id="breadcrumbs">','</p>');
}
?>
</div>
    <div class="page-inner">
        <?php if(get_theme_mod('default_title', 0)){ ?>
            <header class="entry-header">
                <h1 class="entry-title mb uppercase"><?php the_title(); ?></h1>
            </header><!-- .entry-header -->
        <?php } ?>
        <?php while ( have_posts() ) : the_post(); ?>
               
                <div class="login-form"> 
                  
                    <?php  
                    $login  = (isset($_GET['login']) ) ? $_GET['login'] : 0;
                    if ( $login === "failed" ) {  
                        echo '<p class="login-msg"><strong>ERROR:</strong> Invalid username and/or password.</p>';  
                    } elseif ( $login === "empty" ) {  
                        echo '<p class="login-msg"><strong>ERROR:</strong> Username and/or Password is empty.</p>';  
                    } elseif ( $login === "false" ) {  
                        echo '<p class="login-msg"><strong>ERROR:</strong> You are logged out.</p>';  
                    }
                    $args = array(  
                        'redirect' => home_url(),   
                        'id_username' => 'user',  
                        'id_password' => 'pass',  
                       )   
                    ;?>  
                    <?php wp_login_form( $args ); ?>  
                 </div>
        <?php endwhile; // end of the loop. ?>
    </div><!-- .page-inner -->
</div><!-- .#content large-9 left -->

<div class="large-3 col">
    <p class="get-time"><?php echo do_shortcode( '[get_time]' ); ?></p>
    <?php get_sidebar(); ?>
</div><!-- .sidebar -->

</div><!-- .row -->
</div><!-- .page-right-sidebar container -->

<?php do_action( 'flatsome_after_page' ); ?>

<?php get_footer(); ?>