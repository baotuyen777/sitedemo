<?php 
if (!defined('ABSPATH')) die('-1');

/**
* 
*/
// 

//require_once('fbConnet.php');
class FB_Customer_Chat_Ajax
{
	public $fb;
	function __construct()
	{
		
	

	}
	public static function init(){
		
		add_action( 'init', array( __CLASS__, 'define_ajax' ), 0 );
		add_action( 'template_redirect', array( __CLASS__, 'do_fb_cus_chat_ajax' ), 0 );
	    self::add_ajax_events();
	}
	public static function define_ajax(){
		if ( ! empty( $_GET['cus-chat-ajax'] ) ) {
			
				if ( ! defined( 'DOING_AJAX' ) ) {
					define( 'DOING_AJAX', true );
				}
				if ( ! defined( 'CUS_CHAT_DOING_AJAX' ) ) {
					define( 'CUS_CHAT_DOING_AJAX', true );
				}
			 if ( ! WP_DEBUG || ( WP_DEBUG && ! WP_DEBUG_DISPLAY ) ) {

					ini_set( 'display_errors', 0 );
				}
				$GLOBALS['wpdb']->hide_errors();
			}
	}
	private static function cus_chat_ajax_headers() {
			send_origin_headers();
			@header( 'Content-Type: text/html; charset=' . get_option( 'blog_charset' ) );
			@header( 'X-Robots-Tag: noindex' );
			send_nosniff_header();
			nocache_headers();
			status_header( 200 );
		}

	public static function do_fb_cus_chat_ajax(){

			global $wp_query;
			if ( ! empty( $_GET['cus-chat-ajax'] )) {
				
				$wp_query->set( 'cus-chat-ajax', sanitize_text_field( $_GET['cus-chat-ajax'] ) );
				
			}

			if ( $action = $wp_query->get( 'cus-chat-ajax' ) ) {
				self::cus_chat_ajax_headers();
				do_action( 'wp_ajax_' . sanitize_text_field( $action ) );
				die();
			}
		}

		public static function add_ajax_events() {
		
			$ajax_events = array(
				'test'=>true,
				'getfbreview'=>true,
				'ajaxlogin'=>true,
				'getToken'=>true,
				'redlogin'=>false,
				'getListPage'=>true,
				'checkToken'=>true,
				'upToken'=>true,
				'upReviewPage'=>true,
				'upListPageActive'=>true
				);

			foreach ( $ajax_events as $ajax_event => $nopriv ) {
				add_action( 'wp_ajax_' . $ajax_event, array( __CLASS__, $ajax_event ));
				if ( $nopriv ) {
					add_action( 'wp_ajax_nopriv_' . $ajax_event, array( __CLASS__, $ajax_event ) );
				
					add_action( 'wp_ajax_' . $ajax_event, array( __CLASS__, $ajax_event ) );
				}
			}
		}
		public static function fbCoverTime($time){

			return strtotime($time);

		}
		public static function upListPageActive(){

			$page_id= $_POST['page_id'];
			$type=$_POST['type'];


			if(isset($page_id) && isset($type)){

				$list_active  = get_option( 'fb_rv_settings_manager_pages' );
				$list_slug = 'fb_rv_manager_pages';
				$list = $list_active[$list_slug];
				if(in_array($page_id,$list)){

						if($type=='update'){
							$key = array_search($page_id, $list);
							unset($list[$key]);
							$list_active =array($list_slug=>$list);
							update_option('fb_rv_settings_manager_pages',$list_active);

						}

				}
				else{
						if($type=='insert'){

							if(empty($list)){

								$list = array();
								$list[]=$page_id;

								
							}else{

								array_push($list, $page_id);

							}

						$list_active =array($list_slug=>$list);

						update_option('fb_rv_settings_manager_pages', $list_active );

					}

				}


			wp_send_json_success( );

			}else{

				wp_send_json_error();
			}
			


			exit();

		}
		public static function upReviewPage(){
			$page_id=isset($_POST['page_id'])?$_POST['page_id']:$_POST['page_id'];
			$fb  = new FB_Connet();
			try{

			$ratingsEdg =$fb->getReviewByPageId(999999999,$page_id);

			$getReviewAll = post_review::getPosts(array('page_id'=>$page_id,'per_page'=>-1));
			$getReviewAll = count($getReviewAll);
			if(isset($ratingsEdg['rating_count'])){

				update_option('rating_count_'.$page_id,$ratingsEdg['rating_count']);	
			}
			// if($getReviewAll==$ratingsEdg['rating_count']){


			// 	wp_send_json_success(array('count'=>$getReviewAll));
			// 	return ;
			// }
			post_review::deleteOldPosts($page_id);
		   if(isset($ratingsEdg['overall_star_rating'])){
				update_option('overall_star_rating_'.$page_id,$ratingsEdg['overall_star_rating']);
			}else{
				update_option('overall_star_rating_'.$page_id,0);
			}

						$in=array();

						if(isset($ratingsEdg['ratings'])){
							$review=$ratingsEdg['ratings'];	
								foreach ($review as $key => $value) {

									

									$day = date('Y-m-d H:i:s',$value['created_time']->getTimestamp());
									$date  = get_date_from_gmt($day,'Y-m-d H:i:s');

									$users = $value['reviewer'];
									$name=$users['name'];
									$id= $users['id'];
									$args = array(
									'review'=>isset($value['review_text'])?$value['review_text']:'',
									'user_name'=>$name,
									'id'=>$id,
									'has_review'=>$value['has_review'],
									'has_stars'=>isset($value['has_stars'])?$value['has_stars']:'',
									'stars'=>$value['rating'],
									'page_id'=>$page_id,
									'post_date'=>$date,
									'post_date_gmt'=>$date
											);
								$in[]=post_review::insert($args);
								}
							}

				wp_send_json_success($in);
			}
			catch(Exception $e){

				wp_send_json_error( );
			}


			exit();

		}
		public static function upToken(){

			$token = isset($_POST['token'])?$_POST['token']:'';
			$app_id = isset($_POST['app_id'])?$_POST['app_id']:'';
			$secret = isset($_POST['secret'])?$_POST['secret']:'';
			//app_id
			//secret
			update_option('njt_customer_chat_app_token', $token );
			update_option('njt_customer_chat_app_id',$app_id);
			update_option('njt_customer_chat_app_serect',$secret);
			wp_send_json_success( );
			exit();
		}
		public static function test(){
			

			echo 'adsasd';
			echo get_option('gmt_offset');
			echo get_option('timezone_string');
			
			exit();
		}

		public static  function fbConnet(){
		
			$fb = new FB_Connet();
			return $fb->connet();

		}
		public static function ajaxlogin(){
			

			if( ! isset( $_GET['code'])){
				session_start();
			}

			$fb = self::fbConnet();
			
if( isset( $_GET['code'] ) )
{
	
	$helper = $fb->getRedirectLoginHelper();
	$_SESSION['FBRLH_state'] = $_REQUEST['state'];

}
else
{	
	
	$helper = $fb->getRedirectLoginHelper();
	$permissions = ['email','manage_pages']; // Optional permissions
	$loginUrl = $helper->getLoginUrl(get_home_url().'/?cus-chat-ajax=redlogin', $permissions);	
	wp_redirect($loginUrl) ;
}

}
public static function redlogin(){
	error_reporting(E_ALL);
	ini_set('display_errors', '1');
	session_start();
	$fb = self::fbConnet();
	$helper = $fb->getRedirectLoginHelper();
	if( isset( $_GET['code'] ) ) {
  
  try {
    
    $access_token = $helper->getAccessToken();

    //$helper->getPersistentDataHandler()->set( 'access_token', $access_token );
  } catch ( Exception $e ) {
   
    echo 'Exception 1: ' . $e->getMessage() . '
';
  }
  
	// get stored access token
	//$access_token = $helper->getPersistentDataHandler()->get( 'access_token' );
	update_option('facebook_review_token',(string)$access_token);
	$_SESSION['rv_token'] =(string)$access_token;

}
echo  "<script type='text/javascript'>";
echo "window.close();";
echo "</script>";

	exit();
}
			

		public static function checkToken(){

			$access_token= get_option('facebook_review_token',true) ; 
			$url = "https://graph.facebook.com/v2.8/debug_token?input_token=".$access_token."&access_token=".$access_token;
			$curl = curl_init($url);
			
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
			curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, false);
			$result = curl_exec($curl);
			curl_close($curl);
			$arr = json_decode($result,true);
			
			if(isset($arr['data']) && $arr['data']['is_valid']==1 ){

				echo json_encode( array("status"=>true));

			}else{

				echo json_encode( array("status"=>false));
			}


		}

		public static function getListPage(){

			session_start();
			$review = new FB_Review();
			$id_page = $review->getPageId();
			$fb = self::fbConnet();
			$access_token= get_option('facebook_review_token',true) ; 
			$fb->setDefaultAccessToken($access_token);
			try {
				$response = $fb->get('/me?fields=accounts.limit(999)', $access_token);
			} catch(Facebook\Exceptions\FacebookResponseException $e) {
			echo 'Graph returned an error: ' . $e->getMessage();
			exit;
			} catch(Facebook\Exceptions\FacebookSDKException $e) {
			echo 'Facebook SDK returned an error: ' . $e->getMessage();
			exit;
			}

			$user = $response->getGraphObject()->asArray();
			?><!-- <div class="list-pages"> -->

				<select id="listpage-select">
			<?php
			foreach ($user['accounts'] as $key => $value) {
				
				?>
				  <option <?php echo selected($value['id'],$id_page)  ?>  data-description="<?php echo $value['id'] ?>"  data-imagesrc="https://graph.facebook.com/<?php echo $value['id'] ?>/picture" value="<?php echo $value['access_token'] ?>"><?php echo $value['name'] ?></option>
				<?php
			}
			?>
			 </select>


			<script type="text/javascript">
				jQuery(document).ready(function(){
					 jQuery('#listpage-select').ddslick(
  	{
  	
    onSelected: function(data)
    {
     

      jQuery('.fb_rv_page_id').val(data.selectedData.description);
	  jQuery('.fb_rv_token').val(data.selectedData.value);

    }
  });



					
				});
			</script>
			<!-- </div> -->
			<?php
		}
		public static function getToken(){
			session_start();
			print_r($_SESSION['rv_token']);
			
			exit();
			
		}

		public static function getfbreview(){

				$html = '';
				$fb =  new FB_Review();
				

				
				$starall = $_POST['starall'];
				$stars = explode(',', $_POST['stars']);
				$column =100/$_POST['column'];
				$limit = $_POST['limit'];
				$notext = $_POST['notext'];
				$page_id = $_POST['page_id'];
			    $paged = $_POST['paged'];
			    $per_page = $_POST['count'];
			    $oder = $_POST['order'];

			    $fb->setPageID($page_id);
			    $fb->setViewCount($per_page);
			    $fb->setPaged($paged+1);
				$fb->setperPage($per_page);
			    $fb->setOrder($oder);
			    
			    $ratings =$fb->getReivew2($per_page,$stars,$notext,$page_id);
			    $paged_max = $fb->reviewCount();


			    if(ceil($paged_max/$per_page)==$paged){

			    	echo $html;
			    	exit();

			    }
			    
			   
				
				$html=  $fb->reviewBody($ratings,$starall,$stars,$column,$limit);


				echo $html;

			die();
		}
}

FB_Customer_Chat_Ajax::init();