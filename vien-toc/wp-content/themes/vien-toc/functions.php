<?php
// Add custom Theme Functions here
// 
// HIEN THI NGAY CAP NHAT BAI VIET
function smartline_meta_date_capnhat() {
 
	$time_string = sprintf( '<a href="%1$s" title="%2$s" rel="bookmark"><time class="entry-date published updated" datetime="%3$s">%4$s</time></a>',
		esc_url( get_permalink() ),
		esc_attr( get_the_time() ),
		esc_attr( get_the_date( 'c' ) ),
		esc_html( get_the_modified_date() )
	);
 
	echo '<span class="meta-date-capnhat">' . $time_string . '</span>';
}