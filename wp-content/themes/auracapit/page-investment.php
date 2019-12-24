<?php
/*    Template Name: Investment
 * The template for displaying Investment
 *
 * @package WordPress
 * @subpackage twentysixteen
 * 
 */
get_header();
?>  
<div class="isDesktop">
    <?php get_template_part('template-parts/block-desktop/investment', ''); ?>
</div>
<div class="isMobile">
    <?php get_template_part('template-parts/block-mobile/investment', ''); ?>
</div>
<?php get_footer(); ?>
