<?php
/*    Template Name: News
 * The template for displaying News
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
$args = array(
    'orderby' => 'date',
    'order' => 'ASC',
    'category' => '',
    'category_name' => '',
    'include' => '',
    'exclude' => '',
    'post_type' => 'banner',
    'post_status' => 'publish',
    'suppress_filters' => true
);
$banners = get_posts($args);
?>  
<section class="section">    
    <div class="row">
        <div class="col-md-2 col-sm-6 col-xs-12">
            <?php get_template_part('template-parts/block/menu', ''); ?>
        </div>                                        
        <div class="col-md-10 col-sm-6 col-xs-12">
            <div id="bannerCarousel" class="carousel slide" data-ride="carousel">
                <!-- Indicators -->
                <ol class="carousel-indicators">
                    <?php for($i=0; $i<count($banners); $i++){?>
                        <li data-target="#bannerCarousel" data-slide-to="<?php echo $i;?>" class="<?php echo ($i==0)?'active':''?>"></li>
                    <?php }?>                    
                </ol>

                <!-- Wrapper for slides -->
                <div class="carousel-inner" role="listbox"> 
                    <?php foreach($banners as $index=>$banner){
                        $link_detail = get_post_meta($banner->ID, 'link', true);
                        ?>
                        <div class="carousel-item <?php echo $index ==0?'active':''?>">
                            <img src="<?php echo wp_get_attachment_url(get_post_thumbnail_id($banner->ID)); ?>" alt="<?php echo $banner->post_title; ?>">
                            <div class="carousel-text">
                                <img src="<?php echo get_template_directory_uri(); ?>/images/logo.png" alt="">
                                <div class="carousel-content">
                                    <a class="title" href="<?php echo $link_detail ?>">                                    
                                        <?php echo $banner->post_title; ?>
                                    </a>
                                    <div class="content-box scrollbar-rail">
                                        <p>
                                            <?php echo $banner->post_content; ?>
                                        </p>
                                    </div>  
                                    <a href="<?php echo $link_detail ?>" class="read-more">Read more <i class='fa fa-angle-double-right'></i></a>
                                </div>                                    
                            </div>
                        </div>
                    <?php }?>
                </div>     

                <!-- Left and right controls -->
                <a class="left carousel-control" href="#bannerCarousel" data-slide="prev">
                    <span class="glyphicon glyphicon-chevron-left"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="right carousel-control" href="#bannerCarousel" data-slide="next">
                    <span class="glyphicon glyphicon-chevron-right"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>                   
        </div>
    </div>

</section>
<?php get_footer(); ?>
