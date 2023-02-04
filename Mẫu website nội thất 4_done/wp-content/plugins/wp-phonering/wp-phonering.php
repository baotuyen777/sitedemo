<?php
/**
 * Plugin Name: WP Phonering
 * Plugin URI: http://adtdesign.net
 * Description: Plugin WP Phonering
 * Version: 1.0
 * Author: Hoàng An
 * Author URI: http://hoangan.net
 * License: GPLv2 or later
 */
?>
<?php
function add_theme_scripts() {
  wp_enqueue_style( 'style', plugins_url( 'css/style.css', __FILE__ ) );
}
add_action( 'wp_enqueue_scripts', 'add_theme_scripts' );

function phonering_load()
{
    if (!is_admin()):
        if (!wp_is_mobile()):
    ?>
    <div class="phonering-alo-phone phonering-alo-green phonering-alo-show hidden-xs visible-sm visible-md visible-lg" id="phonering-alo-phoneIcon" style="left: -40px; bottom: -50px; display: block;">
    <div class="phonering-alo-ph-circle"></div>
    <div class="phonering-alo-ph-circle-fill"></div>
    <a href="tel:<?php echo get_option('wp_phonering_option_phone'); ?>"></a>
    <div class="phonering-alo-ph-img-circle">
        <a href="tel:<?php echo get_option('wp_phonering_option_phone'); ?>"></a>
        <a href="<?php echo get_option('wp_phonering_option_url'); ?>" class="pps-btn-img " title="Liên hệ">
            <img src="http://i.imgur.com/v8TniL3.png" alt="Liên hệ" width="50"
            onmouseover="this.src='http://i.imgur.com/v8TniL3.png';"
            onmouseout="this.src='http://i.imgur.com/v8TniL3.png';">
        </a>
    </div>
</div>
<?php 
    else:
?>
<div class="phonering-alo-phone phonering-alo-green phonering-alo-show visible-xs hidden-sm hidden-md hidden-lg" id="phonering-alo-phoneIcon" style="left: -50px; bottom: -50px; display: block;">
    <div class="phonering-alo-ph-circle"></div>
    <div class="phonering-alo-ph-circle-fill"></div>
    <a href="tel:<?php echo get_option('wp_phonering_option_phone'); ?>"></a>
    <div class="phonering-alo-ph-img-circle">
        <a href="tel:<?php echo get_option('wp_phonering_option_phone'); ?>"></a>
        <a href="tel:<?php echo get_option('wp_phonering_option_phone'); ?>" class="pps-btn-img " title="Liên hệ">
            <img src="http://i.imgur.com/v8TniL3.png" alt="Liên hệ" width="50"
            onmouseover="this.src='http://i.imgur.com/v8TniL3.png';"
            onmouseout="this.src='http://i.imgur.com/v8TniL3.png';">
        </a>
    </div>
</div>

    <?php
    endif;
    endif;
}
add_action( 'wp_footer', 'phonering_load' );


function register_wp_phonering_settings() {
        register_setting( 'wp-phonering-settings-group', 'wp_phonering_option_url' );
     
        register_setting( 'wp-phonering-settings-group', 'wp_phonering_option_phone' );
}
 
function wp_phonering_create_menu() {
        add_menu_page('WP Phonering', 'WP Phonering', 'administrator', __FILE__, 'wp_phonering_settings_page','dashicons-megaphone', 85);
        add_action( 'admin_init', 'register_wp_phonering_settings' );
}
add_action('admin_menu', 'wp_phonering_create_menu');
 
function wp_phonering_settings_page() {
?>
<div class="wrap">
<h2>Settings WP Phonering</h2>
<?php if( isset($_GET['settings-updated']) ) { ?>
    <div id="message" class="updated">
        <p><strong><?php _e('Save Changed') ?></strong></p>
    </div>
<?php } ?>
<form method="post" action="options.php">
    <?php settings_fields( 'wp-phonering-settings-group' ); ?>

    <table class="form-table">
        <tr valign="top">
        <th scope="row">Link Target</th>
        <td><input size="40" type="url" name="wp_phonering_option_url" placeholder="" value="<?php echo get_option('wp_phonering_option_url'); ?>"/>

        </td>
        
        </tr>
        <tr valign="top">
        <th scope="row">Phone</th>
        <td><input size="40" type="tel" name="wp_phonering_option_phone" placeholder="" value="<?php echo get_option('wp_phonering_option_phone'); ?>"/>
        </td>
        </tr>
    </table>

    <?php submit_button(); ?>
</form>
</div>
<?php } ?>