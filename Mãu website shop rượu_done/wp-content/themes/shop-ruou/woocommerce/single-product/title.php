<?php
/**
 * Single Product title
 *
 * @author 		WooThemes
 * @package 	WooCommerce/Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

?>
<?php $dung_tich = get_field('dung_tich');
      $nong_do = get_field('nong_do'); ?>

<h1 class="product-title product_title entry-title">
	<?php the_title(); ?>
</h1>
<div class="nong-do-dung-tich"><span class="dung-tich"><?php if($dung_tich) the_field('dung_tich'); ?></span> - <span class="nong-do"><?php if($nong_do) the_field('nong_do'); ?></span></div>
<?php if(get_theme_mod('product_title_divider', 1)) { ?>
	<div class="is-divider small"></div>
<?php } ?>
