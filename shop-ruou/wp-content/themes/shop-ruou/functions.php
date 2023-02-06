<?php
// Add custom Theme Functions here
/*
* Author: Le Van Toan - https://levantoan.com
*/
add_action('wp_footer','devvn_readmore_flatsome');
function devvn_readmore_flatsome(){
    ?>
    <style>
        .single-product div#tab-description {
            overflow: hidden;
            position: relative;
        }
        .single-product .tab-panels div#tab-description.panel:not(.active) {
            height: 0 !important;
        }
        .devvn_readmore_flatsome {
            text-align: center;
            cursor: pointer;
            position: absolute;
            z-index: 9999;
            bottom: 0;
            width: 100%;
            background: #fff;
        }
        .devvn_readmore_flatsome:before {
            height: 55px;
            margin-top: -45px;
            content: -webkit-gradient(linear,0% 100%,0% 0%,from(#fff),color-stop(.2,#fff),to(rgba(255,255,255,0)));
            display: block;
        }
        .devvn_readmore_flatsome a {
            color: #318A00;
            display: block;
        }
        .devvn_readmore_flatsome a:after {
            content: '';
            width: 0;
            right: 0;
            border-top: 6px solid #318A00;
            border-left: 6px solid transparent;
            border-right: 6px solid transparent;
            display: inline-block;
            vertical-align: middle;
            margin: -2px 0 0 5px;
        }
    </style>
    <script>
        (function($){
            $(document).ready(function(){
                $(window).load(function(){
                    if($('.single-product div#tab-description').length > 0){
                        var wrap = $('.single-product div#tab-description');
                        var current_height = wrap.height();
                        var your_height = 300;
                        if(current_height > your_height){
                            wrap.css('height', your_height+'px');
                            wrap.append(function(){
                                return '<div class="devvn_readmore_flatsome"><a title="Xem thêm" href="javascript:void(0);">Xem thêm</a></div>';
                            });
                            $('body').on('click','.devvn_readmore_flatsome', function(){
                                wrap.removeAttr('style');
                                $('body .devvn_readmore_flatsome').remove();
                            });
                        }
                    }
                });
            })
        })(jQuery)
    </script>
    <?php
}

/*
 * Thêm nút Xem thêm vào phần mô tả của danh mục sản phẩm
 * Author: Le Van Toan - https://levantoan.com
*/
add_action('wp_footer','devvn_readmore_taxonomy_flatsome');
function devvn_readmore_taxonomy_flatsome(){
    if(is_woocommerce() && is_tax('product_cat')):
    ?>
    <style>
        .tax-product_cat.woocommerce .shop-container .term-description {
            overflow: hidden;
            position: relative;
            margin-bottom: 20px;
        }
        .devvn_readmore_taxonomy_flatsome {
            text-align: center;
            cursor: pointer;
            position: absolute;
            z-index: 9999;
            bottom: 0;
            width: 100%;
            background: #fff;
        }
        .devvn_readmore_taxonomy_flatsome:before {
            height: 55px;
            margin-top: -45px;
            content: -webkit-gradient(linear,0% 100%,0% 0%,from(#fff),color-stop(.2,#fff),to(rgba(255,255,255,0)));
            display: block;
        }
        .devvn_readmore_taxonomy_flatsome a {
            color: #318A00;
            display: block;
        }
        .devvn_readmore_taxonomy_flatsome a:after {
            content: '';
            width: 0;
            right: 0;
            border-top: 6px solid #318A00;
            border-left: 6px solid transparent;
            border-right: 6px solid transparent;
            display: inline-block;
            vertical-align: middle;
            margin: -2px 0 0 5px;
        }
    </style>
    <script>
        (function($){
            $(document).ready(function(){
                $(window).load(function(){
                    if($('.tax-product_cat.woocommerce .shop-container .term-description').length > 0){
                        var wrap = $('.tax-product_cat.woocommerce .shop-container .term-description');
                        var current_height = wrap.height();
                        var your_height = 300;
                        if(current_height > your_height){
                            wrap.css('height', your_height+'px');
                            wrap.append(function(){
                                return '<div class="devvn_readmore_taxonomy_flatsome"><a title="Xem thêm" href="javascript:void(0);">Xem thêm</a></div>';
                            });
                            $('body').on('click','.devvn_readmore_taxonomy_flatsome', function(){
                                wrap.removeAttr('style');
                                $('body .devvn_readmore_taxonomy_flatsome').remove();
                            });
                        }
                    }
                });
            })
        })(jQuery)
    </script>
    <?php
    endif;
}