<?php
namespace Perfect_Woocommerce_Brands\Shortcodes;
use WP_Query;

defined( 'ABSPATH' ) or die( 'No script kiddies please!' );

class PWB_AZ_Listing_Shortcode{

  public static function shortcode( $atts ) {

    $atts = shortcode_atts( array(), $atts, 'pwb-az-listing' );

    ob_start();

    $brands         = \Perfect_Woocommerce_Brands\Perfect_Woocommerce_Brands::get_brands( true, 'name', 'ASC' );
    $grouped_brands = array();

    $letter = null;
    foreach( $brands as $brand ){
      if( $letter != $brand->name[0] ) $letter = $brand->name[0];
      $letter = strtolower( self::replace_specials_characters( $letter ) );
      $grouped_brands[$letter][] = $brand;
    }

    //navigation
    if( !empty( $grouped_brands ) ):
      ?>
      <div class="pwb-az-listing">

        <div class="pwb-az-listing-header">
          <ul class="pwb-clearfix">
            <?php
            foreach( $grouped_brands as $letter => $brand_group ):
              ?>
              <li><a href="#pwb-az-listing-<?php echo $letter;?>"><?php echo $letter;?></a></li>
              <?php
            endforeach;
            ?>
          </ul>
        </div>

        <div class="pwb-az-listing-content">
          <?php

          foreach( $grouped_brands as $letter => $brand_group ):
            ?>
            <div id="pwb-az-listing-<?php echo $letter;?>" class="pwb-az-listing-row pwb-clearfix">
              <p class="pwb-az-listing-title"><?php echo $letter;?></p>
              <div class="pwb-az-listing-row-in">
                <?php
                foreach( $brand_group as $brand ):
                  $has_products = self::has_products( $brand->term_id );
                  if( !empty( $has_products ) ):
                    ?>
                    <div class="pwb-az-listing-col">
                      <a href="<?php echo get_term_link($brand->term_id);?>"><?php echo $brand->name;?></a>
                    </div>
                    <?php
                  endif;
                endforeach;
                ?>
              </div>
            </div>
            <?php
          endforeach;

          ?>
        </div>

      </div>
      <?php

    endif;

    return ob_get_clean();

  }

  protected static function replace_specials_characters($s){
		$s = preg_replace("/??|??|??|??|??/","a",$s);
		$s = preg_replace("/??|??|??|??/","A",$s);
		$s = preg_replace("/??|??|??/","e",$s);
		$s = preg_replace("/??|??|??/","E",$s);
		$s = preg_replace("/??|??|??/","i",$s);
		$s = preg_replace("/??|??|??/","I",$s);
		$s = preg_replace("/??|??|??|??|??/","o",$s);
		$s = preg_replace("/??|??|??|??/","O",$s);
		$s = preg_replace("/??|??|??/","u",$s);
		$s = preg_replace("/??|??|??/","U",$s);

		$s = preg_replace('/[^a-zA-Z0-9_.-]/', '', $s);
		return $s;
	}

  private static function has_products( $brand_id ){

    $args = array(
      'posts_per_page' => -1,
      'post_type' => 'product',
      'tax_query' => array(
        array(
          'taxonomy' => 'pwb-brand',
          'field'    => 'term_id',
          'terms'    => array( $brand_id )
        )
      ),
      'fields' => 'ids'
    );

    if( get_option('woocommerce_hide_out_of_stock_items') === 'yes' ){
      $args['meta_query'] = array(
        array(
          'key'     => '_stock_status',
          'value'   => 'outofstock',
          'compare' => 'NOT IN'
        )
      );
    }

    $wp_query = new WP_Query($args);
    wp_reset_postdata();
    return $wp_query->posts;

  }

}
