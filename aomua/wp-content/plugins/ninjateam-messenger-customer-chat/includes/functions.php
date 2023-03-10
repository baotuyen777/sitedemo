<?php
function njt_customer_chat_languages(){
	$locale = array(
                          'af_ZA' => 'Afrikaans',
                          // Arabic
                          'ar_AR' => 'Arabic',
                          // Azerbaijani
                          'az_AZ' => 'Azerbaijani',
                          // Belarusian
                          'be_BY' => 'Belarusian',
                          // Bulgarian
                          'bg_BG' => 'Bulgarian',
                          // Bengali
                          'bn_IN' => 'Bengali',
                          // Bosnian
                          'bs_BA' => 'Bosnian',
                          // Catalan
                          'ca_ES' => 'Catalan',
                          // Czech
                          'cs_CZ' => 'Czech',
                          // Welsh
                          'cy_GB' => 'Welsh',
                          // Danish
                          'da_DK' => 'Danish',
                          // German
                          'de_DE' => 'German',
                          // Greek
                          'el_GR' => 'Greek',
                          // English (UK)
                          'en_GB' => 'English (GB)',
                          // English (Pirate)
                          'en_PI' => 'English (Pirate)',
                          // English (Upside Down)
                          'en_UD' => 'English (Upside Down)',
                          // English (US)
                          'en_US' => 'English (US)',
                          // Esperanto
                          'eo_EO' => 'Esperanto',
                          // Spanish (Spain)
                          'es_ES' => 'Spanish (Spain)',
                          // Spanish
                          'es_LA' => 'Spanish',
                          // Estonian
                          'et_EE' => 'Estonian',
                          // Basque
                          'eu_ES' => 'Basque',
                          // Persian
                          'fa_IR' => 'Persian',
                          // Leet Speak
                          'fb_LT' => 'Leet Speak',
                          // Finnish
                          'fi_FI' => 'Finnish',
                          // Faroese
                          'fo_FO' => 'Faroese',
                          // French (Canada)
                          'fr_CA' => 'French (Canada)',
                          // French (France)
                          'fr_FR' => 'French (France)',
                          // Frisian
                          'fy_NL' => 'Frisian',
                          // Irish
                          'ga_IE' => 'Irish',
                          // Galician
                          'gl_ES' => 'Galician',
                          // Hebrew
                          'he_IL' => 'Hebrew',
                          // Hindi
                          'hi_IN' => 'Hindi',
                          // Croatian
                          'hr_HR' => 'Croatian',
                          // Hungarian
                          'hu_HU' => 'Hungarian',
                          // Armenian
                          'hy_AM' => 'Armenian',
                          // Indonesian
                          'id_ID' => 'Indonesian',
                          // Icelandic
                          'is_IS' => 'Icelandic',
                          // Italian
                          'it_IT' => 'Italian',
                          // Japanese
                          'ja_JP' => 'Japanese',
                          // Georgian
                          'ka_GE' => 'Georgian',
                          // Khmer
                          'km_KH' => 'Khmer',
                          // Korean
                          'ko_KR' => 'Korean',
                          // Kurdish
                          'ku_TR' => 'Kurdish',
                          // Latin
                          'la_VA' => 'Latin',
                          // Lithuanian
                          'lt_LT' => 'Lithuanian',
                          // Latvian
                          'lv_LV' => 'Latvian',
                          // Macedonian
                          'mk_MK' => 'Macedonian',
                          // Malayalam
                          'ml_IN' => 'Malayalam',
                          // Malay
                          'ms_MY' => 'Malay',
                          // Norwegian (bokmal)
                          'nb_NO' => 'Norwegian (bokmal)',
                          // Nepali
                          'ne_NP' => 'Nepali',
                          // Dutch
                          'nl_NL' => 'Dutch',
                          // Norwegian (nynorsk)
                          'nn_NO' => 'Norwegian (nynorsk)',
                          // Punjabi
                          'pa_IN' => 'Punjabi',
                          // Polish
                          'pl_PL' => 'Polish',
                          // Pashto
                          'ps_AF' => 'Pashto',
                          // Portuguese (Brazil)
                          'pt_BR' => 'Portuguese (Brazil)',
                          // Portuguese (Portugal)
                          'pt_PT' => 'Portuguese (Portugal)',
                          // Romanian
                          'ro_RO' => 'Romanian',
                          // Russian
                          'ru_RU' => 'Russian',
                          // Slovak
                          'sk_SK' => 'Slovak',
                          // Slovenian
                          'sl_SI' => 'Slovenian',
                          // Albanian
                          'sq_AL' => 'Albanian',
                          // Serbian
                          'sr_RS' => 'Serbian',
                          // Swedish
                          'sv_SE' => 'Swedish',
                          // Swahili
                          'sw_KE' => 'Swahili',
                          // Tamil
                          'ta_IN' => 'Tamil',
                          // Telugu
                          'te_IN' => 'Telugu',
                          // Thai
                          'th_TH' => 'Thai',
                          // Filipino
                          'tl_PH' => 'Filipino',
                          // Turkish
                          'tr_TR' => 'Turkish',
                          //
                          'uk_UA' => 'Ukrainian',
                          // Vietnamese
                          'vi_VN' => 'Vietnamese',
                          //
                          'zh_CN' => 'Simplified Chinese (China)',
                          //
                          'zh_HK' => 'Traditional Chinese (Hong Kong)',
                          //
                          'zh_TW' => 'Traditional Chinese (Taiwan)',
        );

	return $locale;
}
function njt_fb_facebook_messenger_chek_page(){
    global $wp_query;
      $show = false;
      $post_id = (isset($wp_query->post) ? $wp_query->post->ID : '');
      if (empty($post_id)) {
          return $show;
      }
      $type = get_option("njt_customer_chat_facebook_messenger_hide_display");

      if ($type == "display") {
          /*
          * Display for pages...
          */
          $all_page = get_option("njt_fb_facebook_messenger_show_page");
          
          if( is_array( $all_page ) ) {
              if ( is_page() && in_array($post_id, $all_page) ) {
                 $show = true;
              }
          }

      }else if($type == "except"){
          $all_page = get_option("njt_fb_facebook_messenger_hide_page");
          if( is_array($all_page) ){
              if ( is_page() && in_array($post_id,$all_page) ) {
                 $show = false;
              }else{
                  $show =true;
              }
          }else{
              $show = true;
          }
      }
      return $show;
}





function njt_show_customer_chat_messenger($type){
  if($type=="evething" || njt_fb_facebook_messenger_chek_page() || !get_option('njt_customer_chat_facebook_messenger_hide_display')){?> 
          <script type="text/javascript">
            var ajaxurl = "<?php echo admin_url('admin-ajax.php'); ?>"; 
          </script>
        <?php 
          $enable_plugin=get_option('njt_customer_chat_enable');
          if(!empty($enable_plugin)){

            $app_margin_bottom=get_option('njt_customer_chat_margin_bottom');
            $app_postion_icon=get_option('njt_customer_chat_position_icon');
            $app_icon_color=get_option('njt_customer_chat_color_icon');

            // update 12/2/18
            $logged_in_greeting=get_option('njt_fb_logged_in_greeting');
            $logged_out_greeting=get_option('njt_fb_logged_out_greeting');
            $enable_minimized = get_option('njt_fb_enable_minimized');

        ?>
          <style type="text/css">
              <?php if($app_postion_icon=="left"){ ?>
                  .fb_dialog, .fb-customerchat:not(.fb_iframe_widget_fluid) iframe {
                        right: auto !important;
                        left: 18pt !important;
                  }
              <?php } ?>    
              .fb_dialog, .fb-customerchat:not(.fb_iframe_widget_fluid) iframe{
                margin-bottom: <?php echo $app_margin_bottom; ?>px !important;
              }
          </style>
          <script>      
            <?php $app_languages=get_option('njt_customer_chat_languages'); $app_page=get_option('njt_customer_chat_list_page');?>
              
              window.fbMessengerPlugins = window.fbMessengerPlugins || { 
                init: function () { 
                  FB.init({ 
                      appId:'983715691729450',
                      autoLogAppEvents : true,
                      xfbml : true,
                      version: 'v2.11'});
                  }, 
                  callable: []      
              };

              window.fbAsyncInit = window.fbAsyncInit || function () { 
                  window.fbMessengerPlugins.callable.forEach(function (item) { item(); });        window.fbMessengerPlugins.init(); 
              };

              setTimeout(function () {  
                (function (d, s, id) {  
                    var js, fjs = d.getElementsByTagName(s)[0]; 
                    if (d.getElementById(id)) { return; } 
                    js = d.createElement(s);
                    js.id = id;
                    js.src = "//connect.facebook.net/<?php echo $app_languages; ?>/sdk/xfbml.customerchat.js"; 
                    fjs.parentNode.insertBefore(js, fjs);        
                }(document, 'script', 'facebook-jssdk')); }, 0);      
          </script> 
          
          <div class="fb-customerchat" page_id="<?php echo $app_page; ?>" ref="" theme_color="<?php echo $app_icon_color; ?>"
          <?php echo  $logged_in_greeting?'logged_in_greeting="'.$logged_in_greeting.'"':''   ?>
          <?php echo  $logged_out_greeting?'logged_out_greeting="'.$logged_out_greeting.'"':''   ?>
          <?php echo $enable_minimized? 'minimized=true' : '' ?>    ></div>

        <?php } ?>
        
      <?php
      }
}

function check_protocol_siteURL() {
  $protocol = ((!empty($_SERVER['HTTPS']) && $_SERVER['HTTPS'] != 'off') || 
    $_SERVER['SERVER_PORT'] == 443) ? "https://" : "http://";
  
  return $protocol;
}
