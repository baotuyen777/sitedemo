<?php
/**
 * The template for displaying comments.
 *
 * This is the template that displays the area of the page that contains both the current comments
 * and the comment form.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package flatsome
 */

/*
 * If the current post is protected by a password and
 * the visitor has not yet entered the password we will
 * return early without loading the comments.
 */
if ( post_password_required() ) {
	return;
}
?>

<?php do_action('flatsome_before_comments'); ?>

	<h3>Tham gia bình luận:</h3>
	<div class="fb-comments" data-href="<?php the_permalink();?>" data-width="100%" data-numposts="20"></div>