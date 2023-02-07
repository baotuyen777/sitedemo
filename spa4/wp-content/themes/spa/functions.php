<?php
// Add custom Theme Functions here
// 
/**
@ Hàm hiển thị thông tin của post (Post Meta)
@ thachpham_entry_meta()
**/
if( ! function_exists( 'thachpham_entry_meta' ) ) {
  function thachpham_entry_meta() {
    if ( ! is_page() ) :
      echo '<div class="entry-meta">';
 
        // Hiển thị tên tác giả, tên category và ngày tháng đăng bài
        printf( __('Đăng bởi: <span class="author"> %1$s</span>', 'giuseart'),
          get_the_author() );
 
        printf( __('Đăng ngày: <span class="date-published"> %1$s</span>', 'giuseart'),
          get_the_date() );
 
        printf( __('Chuyên mục: <span class="category"> %1$s</span>', 'giuseart'),
          get_the_category_list( ', ' ) );
 
        // Hiển thị số đếm lượt bình luận
        if ( comments_open() ) :
          echo ' <span class="meta-reply">';
            comments_popup_link(
              __('0 bình luận', 'giuseart'),
              __('1 bình luận', 'giuseart'),
              __('% bình luận', 'giuseart'),
              __('Xem bình luận', 'giuseart')
             );
          echo '</span>';
        endif;
      echo '</div>';
    endif;
  }
}