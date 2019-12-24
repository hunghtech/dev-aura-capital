<?php
/*    Template Name: Trang chủ
 * The template for displaying Home page
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
?>  
<div class="isDesktop">
    <?php get_template_part('template-parts/block-desktop/homepage', ''); ?>
</div>
<div class="isMobile">
    <?php get_template_part('template-parts/block-mobile/homepage', ''); ?>
</div> 
<?php get_footer(); ?>
