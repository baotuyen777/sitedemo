<?php if ( have_posts() ) : ?>

<?php /* Start the Loop */ ?>

<?php while ( have_posts() ) : the_post(); ?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	
	<div class="article-inner <?php flatsome_blog_article_classes(); ?>">
			<?php if ( function_exists('yoast_breadcrumb') ) { yoast_breadcrumb( '<p id="breadcrumbs">','</p>' );}?>
			<?php
			if(flatsome_option('blog_post_style') == 'default' || flatsome_option('blog_post_style') == 'inline'){
				get_template_part('template-parts/posts/partials/entry-header', flatsome_option('blog_posts_header_style') );
			}
		?>
		<div class="tag-meta-post"><?php setPostViews(get_the_ID()); ?><span class="fa fa-eye"></span><span class="luot-xem">
<?php echo getPostViews(get_the_ID()); ?> </span><span class="fa fa-clock-o"></span><span class="meta-date-capnhat"><?php echo smartline_meta_date_capnhat(); ?></span><span class="fa fa-folder"></span><span class="danh-muc"><?php echo the_category();?></span></div>
		<div class="rating">
			<span class="label">Đánh giá bài viết:</span><span class="box-rating"><?php if(function_exists('the_ratings')) { the_ratings(); } ?></span>
		</div>
		<?php echo do_shortcode('[thong-tin-them]');?>
		
		<?php get_template_part( 'template-parts/posts/content', 'single' ); ?>
		<div class="bai-viet-tag"><?php the_tags( 'Thẻ tìm kiếm: ', ' • ', '<br />' ); ?></div>
		<div class="list-news"><?php
    $categories = get_the_category($post->ID);
    if ($categories) 
    {
        $category_ids = array();
        foreach($categories as $individual_category) $category_ids[] = $individual_category->term_id;
 
        $args=array(
        'category__in' => $category_ids,
        'post__not_in' => array($post->ID),
        'showposts'=>10, // Số bài viết bạn muốn hiển thị.
        'ignore_sticky_posts'=>1
        );
        $my_query = new wp_query($args);
        if( $my_query->have_posts() ) 
        {
            echo '<h3>Bài viết cùng chuyên mục:</h3><ul class="list-news">';
			echo '<p>Bạn cũng có thể tìm các bài viết khác trong chủ đề này</p>';
            while ($my_query->have_posts())
            {
                $my_query->the_post();
                ?>
                <li>
                	<div class="new-img"><a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a></div>
                	<div class="item-list">
                		<h4  class="relative-post-title"><a href="<?php the_permalink() ?>" title="<?php the_title_attribute(); ?>"><?php the_title(); ?></a></h4>
                	                	</div>
                </li>
                <?php
            }
            echo '</ul>';
        }
    }
?></div>
<!-- form tư vấn -->	
<?php echo do_shortcode('[contact-form-7 id="678" title="Yêu cầu tư vấn"]');?>
<!-- /form tư vấn -->			
	</div><!-- .article-inner -->
</article><!-- #-<?php the_ID(); ?> -->

<?php endwhile; ?>

<?php else : ?>

	<?php get_template_part( 'no-results', 'index' ); ?>

<?php endif; ?>