<?php
/*    Template Name: Trang chủ
 * The template for displaying Home page
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
$postID = get_the_ID();
$titleAbout = get_field('title',$postID);
$descriptionAbout = get_field('description',$postID);
$linkAbout = get_field('link',$postID);
$thumbnailAbout = get_field('thumbnail',$postID);

// get commitment
$args = array(
    'numberposts' => -1,    
    'orderby' => 'date',
    'order' => 'DESC',
    'post_type' => 'commitment',
    'post_status' => 'publish',
    'suppress_filters' => true
);
$commitments = get_posts($args);

$terms = get_terms( array(
    'taxonomy' => 'list-commitment',
    'hide_empty' => false,
    'orderby' => 'date',
    'order' => 'ASC',
) );
?>  
<section id="about" class="wow fadeIn" data-wow-delay=".5s">            
    <div class="isDesktop">
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <img src="<?php echo $thumbnailAbout ;?>" class="thumbnail-about" alt=""/>
                </div>
                <div class="col-sm- col-md-8 block-title">
                    <p>
                        About Aura
                    </p>
                    <h3>
                        <?php echo $titleAbout ;?>
                    </h3>
                    <div class="description">
                        <?php echo $descriptionAbout ;?>
                    </div>
                    <a href="<?php echo $linkAbout ;?>" class="see-more">
                        <span>See more</span>
                    </a>

                </div>
            </div>
        </div>                
    </div>
    <div class="isMobile">
        <div class="bg-color-mobile"></div>
        <div class="introduction">
            <div class="row">                        
                <div class="col-sm-6 col-md-4">
                    <img src="<?php echo $thumbnailAbout ;?>" class="thumbnail-about" alt=""/>
                </div>
                <div class="col-sm-12 col-md-8">                            
                    <div class="description">
                        <h3>
                            <?php echo $titleAbout ;?>
                        </h3>
                        <?php echo $descriptionAbout ;?>
                        <div class="btn-see-more">
                            <a href="<?php echo $linkAbout ;?>" class="see-more">
                                <span>See more</span>
                            </a>
                        </div>                                
                    </div>                            

                </div>
            </div>
        </div>                
    </div>

</section>

<section id="commitment" class="section">
    <div class="isDesktop">
        <div class="">
            <div class="row">
                <div class="col-sm-6 col-md-4">
                    <div id="timeline-content" class="wow fadeIn" data-wow-delay=".5s">
                        <h1>The Commitment</h1>
                        <ul class="timeline">
                            <?php foreach($terms as $term){                                
                                ?>
                                <li class="event" data-type="<?php echo $term->slug;?>">
                                    <h3><?php echo $term->name ;?></h3>                                    
                                </li>
                            <?php }?>
                        </ul>
                    </div>                     
                </div>
                <div class="col-sm-6 col-md-8 block-commitment">
                    <div class="row">
                        <div class="commitment-carousel slider">
                            <?php foreach($commitments as $commitment){
                                $description = get_field('description',$commitment->ID);
                                $srcImage = wp_get_attachment_url(get_post_thumbnail_id($commitment->ID));
                            ?>
                            <div class="commitment-item real-estate">
                                <img src="<?php echo $srcImage ;?>" alt=""/> 
                                <div class="description">
                                    <span class="date">
                                        <?php echo $commitment->post_title ;?> | FROM <?php echo date('M Y', strtotime($commitment->post_date)); ?> - NOW
                                    </span>
                                    <p class="title">Real Estate</p>
                                    <p class="fivo-light">
                                        <?php echo $description ;?>
                                    </p>
                                </div>                                    
                            </div> 
                            <?php }?>
                        </div>
                    </div>       
                </div>
            </div>
        </div>
    </div>
    <div class="isMobile">                
        <div class="timeline-mobile">                    
            <div class="row">
                <h1>The Commitment</h1>
                <div class="item">
                    <img src="assets/images/icon/icon-real-estate.svg" alt=""/>
                    <p>Real Estate</p>
                </div>
                <div class="item">
                    <img src="assets/images/icon/icon-education.svg" alt=""/>
                    <p>Education</p>
                </div>
                <div class="item">
                    <img src="assets/images/icon/icon-fb.svg" alt=""/>
                    <p>F&B</p>
                </div>
                <div class="item">
                    <img src="assets/images/icon/icon-technology.svg" alt=""/>
                    <p>Technology</p>
                </div>
                <div class="item">
                    <img src="assets/images/icon/icon-community.svg" alt=""/>
                    <p>Community</p>
                </div>
                <div class="item">
                    <img src="assets/images/icon/icon-other-activities.svg" alt=""/>
                    <p>Other Activities</p>
                </div>
            </div>                           
        </div>                

        <?php foreach($commitments as $commitment){
            $description = get_field('description',$commitment->ID);
            $srcImage = wp_get_attachment_url(get_post_thumbnail_id($commitment->ID));
        ?>
            <div class="commitment-item">
                <div class="row">
                    <div class="col-8">
                        <img src="<?php echo $srcImage ;?>" alt=""/>                                   
                    </div>
                    <div class="col-4">
                        <div class="description">
                            <span class="date">
                                <?php echo $commitment->post_title ;?> | FROM <?php echo date('M Y', strtotime($commitment->post_date)); ?> - NOW
                            </span>
                            <p class="title">Real Estate</p>
                            <p class="fivo-light">
                                <?php echo $description ;?>
                            </p>
                        </div>  
                    </div>
                </div>
            </div>
        <?php }?>

    </div>

</section>

<div class="isDesktop">
    <section id="milestone" class="section">            
        <div class="container">
            <div class="row">
                <div class="col-sm-6 col-md-8 wow fadeIn" data-wow-delay=".5s">
                    <img src="assets/images/milestone.png" class="w-100" alt=""/>
                    <div class="description">
                        <h4>Event calendar</h4>
                        <p class="pt-4 mb-50 fivo-light">
                            All pictures and information of events held by<br/>                             
                            AURA and our upcoming events.  
                        </p>
                        <a href="#" class="see-more fivo-light">
                            <span>Book a slot</span>                                    
                        </a>
                    </div>                        
                </div>
                <div class="col-sm-6 col-md-4 wow fadeIn" data-wow-delay=".8s">
                    <h4>
                        Milestone
                    </h4>
                    <div class="bg-text">
                        <div class="bg-color"></div>
                        <img src="assets/images/bg-text.png" alt/>                            
                    </div>                        
                </div>
            </div>
        </div>
    </section>
</div>
<div class="isMobile">
    <section id="milestone" class="section">  
        <div class="row">
            <div class="col-12">
                <img src="assets/images/mobile/milestone.png" class="w-100" alt=""/>
                <div class="description">
                    <h4>Event calendar</h4>
                    <p class="mb-50 fivo-light">
                        All pictures and information of events held by
                        AURA and our upcoming events.  
                    </p>                                
                </div>  
                <a href="#" class="see-more fivo-light">Book a slot</a>                      
            </div>
        </div>
    </section>            
</div>                            


<section id="news" class="section">
    <div class="row">
        <div class="bg-month">
            <img src="assets/images/bg-month.png" alt=""/>
        </div>                    
    </div>
    <div class="container">  

        <!--Desktop-->
        <div class="isDesktop">
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <img src="assets/images/news.png" class="thumbnail-news" alt=""/>                                            
                </div>
                <div class="col-sm-6 col-md-6">
                    <div class="description">
                        <h4>News</h4>
                        <p class="pt-4 mb-50 fivo-light">
                            Lasted news from Aura Capital 
                        </p>
                        <a href="#" class="see-more fivo-light">
                            <span>View more</span>
                        </a>
                    </div>                        
                </div>
            </div>
            <div class="row">
                <div class="col-sm-6 col-md-6">
                    <div class="description description-carousel">
                        <p class="pt-4 mb-50 fivo-light">
                            Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendre
                        </p>
                        <a href="#" class="see-more fivo-light">
                            <span>View more</span>
                        </a>
                    </div>                        
                </div>
                <div class="col-sm-6 col-md-6 wow fadeIn" data-wow-delay="1s">
                    <div id="carousel-area">
                        <div id="carousel-new" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-new" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-new" data-slide-to="1"></li>
                            </ol>
                            <div class="carousel-inner" role="listbox">
                                <div class="carousel-item active">
                                    <img src="assets/images/news2.png" alt="" class="thumbnail-news">
                                </div>
                                <div class="carousel-item">
                                    <img src="assets/images/news2.png" alt="" class="thumbnail-news">
                                </div>
                            </div>
                            <!--<a class="carousel-control-prev" href="#carousel-new" role="button" data-slide="prev">
                                <span class="carousel-control carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="sr-only">Previous</span>
                            </a>
                            <a class="carousel-control-next" href="#carousel-new" role="button" data-slide="next">
                                <span class="carousel-control carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="sr-only">Next</span>
                            </a>-->
                        </div>
                    </div>                             
                </div>                    
            </div>                
        </div>

        <!--Mobile-->

        <div class="isMobile">
            <div class="row mb-50">
                <div class="col-sm-6 col-md-6">
                    <div class="description">
                        <h4>News</h4>
                        <p class="mb-50 fivo-light">
                            Lasted news from Aura Capital 
                        </p>                            
                    </div>                        
                </div>
                <div class="col-sm-6 col-md-6">
                    <img src="assets/images/mobile/news.png" class="w-100" alt=""/>
                    <a href="#" class="see-more fivo-light">
                        See more
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>                    
            </div>
            <div class="row mt-40">                    
                <div class="col-12">
                    <img src="assets/images/mobile/news2.png" class="w-100" alt=""/>
                    <a href="#" class="see-more fivo-light">
                        See more
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>                    
            </div>
        </div>

    </div>

</section>  
<?php get_footer(); ?>
