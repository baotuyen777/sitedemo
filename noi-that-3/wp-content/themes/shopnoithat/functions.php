<?php /**
 * Remove product tabs
 *
 */
function woo_remove_product_tab($tabs) {
 
    unset( $tabs['reviews'] );                                  // Remove the reviews tab
    unset( $tabs['additional_information'] );   // Remove the additional information tab
 
        return $tabs;
 
}
add_filter( 'woocommerce_product_tabs', 'woo_remove_product_tab', 98);
add_filter( 'wc_product_sku_enabled', '__return_false' );

add_filter( 'woocommerce_product_tabs', 'woo_rename_tabs', 98 );
function woo_rename_tabs( $tabs ) {
$tabs['description']['title'] = __( 'Thông tin sản phẩm' );     // đổi tên description tab

return $tabs;
}

add_filter( 'woocommerce_product_tabs', 'woo_new_product_tab' );
function woo_new_product_tab( $tabs ) {
// thêm tab mới
$tabs['test_tab'] = array(
'title' => __( 'Vận chuyển' , 'woocommerce' ),
'priority' => 50,
'callback' => 'woo_new_product_tab_content'
);
return $tabs;
}
function woo_new_product_tab_content() {
//  Nội dung của custom tab
echo '<p><b>Bước 1:</b> Việc đầu tiên nên lấy hết tất cả những thực phẩm trong tủ lạnh ra<br>

Bạn cần chắc chắn rằng tất cả những thực phẩm trong tủ phải được lấy ra ngoài hết nếu không trong quá trình di chuyển những thực phẩm đó có thể rơi, đỗ vỡ và có thể làm cho tủ lạnh của bạn bị hỏng hóc.<br>

<b>Bước 2:</b> Lấy hết khay kệ bên trong tủ ra ngoài<br>

Việc làm này vô cùng cần thiết bởi vì khi bạn tháo khay kệ ra ngoài giúp cho tủ lạnh giảm được trọng lượng mà còn giúp cho khay kệ không bị xáo trộn trong quá trình vận chuyển.<br>

Lưu ý: Bạn phải chắc chắn rằng khi tháo khay ra khỏi tủ thì việc lắp vào cũng sẽ đơn giản như lúc bạn tháo chúng ta.<br>

<b>Bước 3:</b> Rút phích cắm tủ lạnh<br>

Bạn phải chắc chắn rằng phích cắm điện của tủ phải được rút ra khỏi ổ cắm nếu không sẽ gây nguy hiểm.<br>

Lưu ý: Sau khi rút phích cắm ra bạn nên quắn nó lại thật gọn để tránh hiện tượng nó sẽ cản trở bạn khi bạn di chuyển tủ lạnh.<br>

<b>Bước 4:</b> Xả tuyết và làm khô tủ trước khi di chuyển
<br>
Công việc này khá tốn nhiều thời gian nên bạn cần phải thực hiện trước khi dọn nhà ít nhất là 6 đến 8 tiếng. Việc di chuyển tủ trong khi còn băng hay đọng nước sẽ vô cùng nguy hiểm bởi vì trong quá trình di chuyển tủ sẽ bị rung lắc khá mạnh và nước có thể vô tình vào được những phần hỡ trong thiết bị.<br>

<b>Bước 5:</b> Cột chặt cố định cửa tủ lạnh lại<br>

Bạn nên sử dụng một sợi dây lớn để tránh chúng có thể vô tình bung ra ngoài và gây hại cho chính chiếc tủ lạnh của bạn. Tuy nhiên hãy cẩn thận không nên buộc các cánh cửa tủ quá chặt vì có thể bạn sẽ khó mở chúng ra sau khi quá trình vận chuyển kết thúc.<br>

Lưu ý: Trước khi thực hiện bước cố định cửa tủ bạn cần phải lưu ý thực hiện tốt bước 4 bởi vì nếu bạn không lau thật khô tủ thì trong điều kiện đóng chật tủ sẽ tạo điều kiện thuận lợi cho vi khuẩn và nấm mốc phát triển bên trong của tủ lạnh.<br>

<b>Bước 6:</b> Di chuyển tủ nhẹ nhàng và an toàn<br>

Bạn cần chú ý di chuyển tủ thật nhẹ nhàng tránh tình trạng va chạm gây trầy xước hay hỏng hóc cho tủ.Sử dụng xe đẩy có độ lớn tương đương tủ để di chuyển<br>

Lưu ý: Trong quá trình di chuyển nếu có đi lên hoặc xuống cầu thang bạn cần chú ý nên có sự hỗ trợ từ ít nhất 2 người.<br>

<b>Bước 7:</b> Đặt tủ lạnh vào vị trí mới và cắm nguồn tiếp tục sử dụng<br>

Sau khi quá trình di chuyển tủ lạnh của bạn kết thúc, bạn có thể đặt chiếc tủ lạnh vào vị trí mà bạn đã chọn từ trước và có thể sử dụng lại như củ.<br>

Lưu ý: Bạn không nên cắm điện vào và sử dụng tủ ngay, tốt nhất hãy để tủ tại vị trí mới khoảng 2 đến 3 giờ rồi hãy cắm điện vào như vậy sẽ đảm bảo hơn về yếu tố an toàn cũng như đề phòng trường hợp bạn muốn thay đổi vị trí đặt tủ.<br>

Chú ý: Không nên tự một mình di chuyển tủ vì tủ lạnh thường khá nặng nếu nó rơi có thể gây tổn thương cho bạn và hãy đọc kỹ hướng dẫn sử dụng của tủ trước khi di chuyển tủ lạnh.</p>';
}



?>