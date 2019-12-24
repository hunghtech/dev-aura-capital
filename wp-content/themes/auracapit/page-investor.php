<?php
/*    Template Name: Investors
 * The template for displaying Investors
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
?>  
<div class="isDesktop">
    <?php get_template_part('template-parts/block-desktop/investor', ''); ?>
</div>
<div class="isMobile">
    <?php get_template_part('template-parts/block-mobile/investor', ''); ?>
</div>
<?php get_footer(); ?>
