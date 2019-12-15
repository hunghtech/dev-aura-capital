<?php

/**
 * Twenty Sixteen functions and definitions
 *
 * Set up the theme and provides some helper functions, which are used in the
 * theme as custom template tags. Others are attached to action and filter
 * hooks in WordPress to change core functionality.
 *
 * When using a child theme you can override certain functions (those wrapped
 * in a function_exists() call) by defining them first in your child theme's
 * functions.php file. The child theme's functions.php file is included before
 * the parent theme's file, so the child theme functions would be used.
 *
 * @link https://codex.wordpress.org/Theme_Development
 * @link https://codex.wordpress.org/Child_Themes
 *
 * Functions that are not pluggable (not wrapped in function_exists()) are
 * instead attached to a filter or action hook.
 *
 * For more information on hooks, actions, and filters,
 * {@link https://codex.wordpress.org/Plugin_API}
 *
 * @package WordPress
 * @subpackage Twenty_Sixteen
 * @since Twenty Sixteen 1.0
 */
/**
 * Twenty Sixteen only works in WordPress 4.4 or later.
 */
if (version_compare($GLOBALS['wp_version'], '4.4-alpha', '<')) {
    require get_template_directory() . '/inc/back-compat.php';
}

if (!function_exists('twentysixteen_setup')) :

    /**
     * Sets up theme defaults and registers support for various WordPress features.
     *
     * Note that this function is hooked into the after_setup_theme hook, which
     * runs before the init hook. The init hook is too late for some features, such
     * as indicating support for post thumbnails.
     *
     * Create your own twentysixteen_setup() function to override in a child theme.
     *
     * @since Twenty Sixteen 1.0
     */
    function twentysixteen_setup() {
        /*
         * Make theme available for translation.
         * Translations can be filed in the /languages/ directory.
         * If you're building a theme based on Twenty Sixteen, use a find and replace
         * to change 'twentysixteen' to the name of your theme in all the template files
         */
        load_theme_textdomain('twentysixteen', get_template_directory() . '/languages');

        // Add default posts and comments RSS feed links to head.
        add_theme_support('automatic-feed-links');

        /*
         * Let WordPress manage the document title.
         * By adding theme support, we declare that this theme does not use a
         * hard-coded <title> tag in the document head, and expect WordPress to
         * provide it for us.
         */
        add_theme_support('title-tag');

        /*
         * Enable support for custom logo.
         *
         *  @since Twenty Sixteen 1.2
         */
        add_theme_support('custom-logo', array(
            'height' => 240,
            'width' => 240,
            'flex-height' => true,
        ));

        /*
         * Enable support for Post Thumbnails on posts and pages.
         *
         * @link http://codex.wordpress.org/Function_Reference/add_theme_support#Post_Thumbnails
         */
        add_theme_support('post-thumbnails');
        set_post_thumbnail_size(1200, 9999);

        // This theme uses wp_nav_menu() in two locations.
        register_nav_menus(array(
            'primary' => __('Primary Menu', 'twentysixteen'),
            'social' => __('Social Links Menu', 'twentysixteen'),
        ));

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support('html5', array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
        ));

        /*
         * Enable support for Post Formats.
         *
         * See: https://codex.wordpress.org/Post_Formats
         */
        add_theme_support('post-formats', array(
            'aside',
            'image',
            'video',
            'quote',
            'link',
            'gallery',
            'status',
            'audio',
            'chat',
        ));

        /*
         * This theme styles the visual editor to resemble the theme style,
         * specifically font, colors, icons, and column width.
         */
        add_editor_style(array('css/editor-style.css', twentysixteen_fonts_url()));

        // Indicate widget sidebars can use selective refresh in the Customizer.
        add_theme_support('customize-selective-refresh-widgets');
    }

endif; // twentysixteen_setup
add_action('after_setup_theme', 'twentysixteen_setup');

/**
 * Sets the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_content_width() {
    $GLOBALS['content_width'] = apply_filters('twentysixteen_content_width', 840);
}

add_action('after_setup_theme', 'twentysixteen_content_width', 0);

/**
 * Registers a widget area.
 *
 * @link https://developer.wordpress.org/reference/functions/register_sidebar/
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_widgets_init() {
    register_sidebar(array(
        'name' => __('Sidebar', 'twentysixteen'),
        'id' => 'sidebar-1',
        'description' => __('Add widgets here to appear in your sidebar.', 'twentysixteen'),
        'before_widget' => '<section id="%1$s" class="widget %2$s">',
        'after_widget' => '</section>',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));

    register_sidebar(array(
        'name' => __('Content Bottom 1', 'twentysixteen'),
        'id' => 'sidebar-2',
        'description' => __('Appears at the bottom of the content on posts and pages.', 'twentysixteen'),
        'before_widget' => '<section id="%1$s" class="widget %2$s">',
        'after_widget' => '</section>',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));

    register_sidebar(array(
        'name' => __('Content Bottom 2', 'twentysixteen'),
        'id' => 'sidebar-3',
        'description' => __('Appears at the bottom of the content on posts and pages.', 'twentysixteen'),
        'before_widget' => '<section id="%1$s" class="widget %2$s">',
        'after_widget' => '</section>',
        'before_title' => '<h2 class="widget-title">',
        'after_title' => '</h2>',
    ));
}

add_action('widgets_init', 'twentysixteen_widgets_init');

if (!function_exists('twentysixteen_fonts_url')) :

    /**
     * Register Google fonts for Twenty Sixteen.
     *
     * Create your own twentysixteen_fonts_url() function to override in a child theme.
     *
     * @since Twenty Sixteen 1.0
     *
     * @return string Google fonts URL for the theme.
     */
    function twentysixteen_fonts_url() {
        $fonts_url = '';
        $fonts = array();
        $subsets = 'latin,latin-ext';

        /* translators: If there are characters in your language that are not supported by Merriweather, translate this to 'off'. Do not translate into your own language. */
        if ('off' !== _x('on', 'Merriweather font: on or off', 'twentysixteen')) {
            $fonts[] = 'Merriweather:400,700,900,400italic,700italic,900italic';
        }

        /* translators: If there are characters in your language that are not supported by Montserrat, translate this to 'off'. Do not translate into your own language. */
        if ('off' !== _x('on', 'Montserrat font: on or off', 'twentysixteen')) {
            $fonts[] = 'Montserrat:400,700';
        }

        /* translators: If there are characters in your language that are not supported by Inconsolata, translate this to 'off'. Do not translate into your own language. */
        if ('off' !== _x('on', 'Inconsolata font: on or off', 'twentysixteen')) {
            $fonts[] = 'Inconsolata:400';
        }

        if ($fonts) {
            $fonts_url = add_query_arg(array(
                'family' => urlencode(implode('|', $fonts)),
                'subset' => urlencode($subsets),
                    ), 'https://fonts.googleapis.com/css');
        }

        return $fonts_url;
    }

endif;

/**
 * Handles JavaScript detection.
 *
 * Adds a `js` class to the root `<html>` element when JavaScript is detected.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_javascript_detection() {
    echo "<script>(function(html){html.className = html.className.replace(/\bno-js\b/,'js')})(document.documentElement);</script>\n";
}

add_action('wp_head', 'twentysixteen_javascript_detection', 0);

/**
 * Enqueues scripts and styles.
 *
 * @since Twenty Sixteen 1.0
 */
function twentysixteen_scripts() {
    // Add custom fonts, used in the main stylesheet.
    //wp_enqueue_style( 'twentysixteen-fonts', twentysixteen_fonts_url(), array(), null );
    // Add Genericons, used in the main stylesheet.
    //wp_enqueue_style( 'genericons', get_template_directory_uri() . '/genericons/genericons.css', array(), '3.4.1' );
    // Theme stylesheet.
    //wp_enqueue_style( 'twentysixteen-style', get_stylesheet_uri() );
    // Load the Internet Explorer specific stylesheet.
    //wp_enqueue_style( 'twentysixteen-ie', get_template_directory_uri() . '/css/ie.css', array( 'twentysixteen-style' ), '20160412' );
    //wp_style_add_data( 'twentysixteen-ie', 'conditional', 'lt IE 10' );
    // Load the Internet Explorer 8 specific stylesheet.
    //wp_enqueue_style( 'twentysixteen-ie8', get_template_directory_uri() . '/css/ie8.css', array( 'twentysixteen-style' ), '20160412' );
    //wp_style_add_data( 'twentysixteen-ie8', 'conditional', 'lt IE 9' );
    // Load the Internet Explorer 7 specific stylesheet.
    //wp_enqueue_style( 'twentysixteen-ie7', get_template_directory_uri() . '/css/ie7.css', array( 'twentysixteen-style' ), '20160412' );
    //wp_style_add_data( 'twentysixteen-ie7', 'conditional', 'lt IE 8' );
    // Load the html5 shiv.
    //wp_enqueue_script( 'twentysixteen-html5', get_template_directory_uri() . '/js/html5.js', array(), '3.7.3' );
    //wp_script_add_data( 'twentysixteen-html5', 'conditional', 'lt IE 9' );
    //wp_enqueue_script( 'twentysixteen-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20160412', true );

    if (is_singular() && comments_open() && get_option('thread_comments')) {
        wp_enqueue_script('comment-reply');
    }

    if (is_singular() && wp_attachment_is_image()) {
        wp_enqueue_script('twentysixteen-keyboard-image-navigation', get_template_directory_uri() . '/js/keyboard-image-navigation.js', array('jquery'), '20160412');
    }

    wp_enqueue_script('twentysixteen-script', get_template_directory_uri() . '/js/functions.js', array('jquery'), '20160412', true);

    wp_localize_script('twentysixteen-script', 'screenReaderText', array(
        'expand' => __('expand child menu', 'twentysixteen'),
        'collapse' => __('collapse child menu', 'twentysixteen'),
    ));
}

add_action('wp_enqueue_scripts', 'twentysixteen_scripts');

/**
 * Adds custom classes to the array of body classes.
 *
 * @since Twenty Sixteen 1.0
 *
 * @param array $classes Classes for the body element.
 * @return array (Maybe) filtered body classes.
 */
function twentysixteen_body_classes($classes) {
    // Adds a class of custom-background-image to sites with a custom background image.
    if (get_background_image()) {
        $classes[] = 'custom-background-image';
    }

    // Adds a class of group-blog to sites with more than 1 published author.
    if (is_multi_author()) {
        $classes[] = 'group-blog';
    }

    // Adds a class of no-sidebar to sites without active sidebar.
    if (!is_active_sidebar('sidebar-1')) {
        $classes[] = 'no-sidebar';
    }

    // Adds a class of hfeed to non-singular pages.
    if (!is_singular()) {
        $classes[] = 'hfeed';
    }

    return $classes;
}

add_filter('body_class', 'twentysixteen_body_classes');

/**
 * Converts a HEX value to RGB.
 *
 * @since Twenty Sixteen 1.0
 *
 * @param string $color The original color, in 3- or 6-digit hexadecimal form.
 * @return array Array containing RGB (red, green, and blue) values for the given
 *               HEX code, empty array otherwise.
 */
function twentysixteen_hex2rgb($color) {
    $color = trim($color, '#');

    if (strlen($color) === 3) {
        $r = hexdec(substr($color, 0, 1) . substr($color, 0, 1));
        $g = hexdec(substr($color, 1, 1) . substr($color, 1, 1));
        $b = hexdec(substr($color, 2, 1) . substr($color, 2, 1));
    } else if (strlen($color) === 6) {
        $r = hexdec(substr($color, 0, 2));
        $g = hexdec(substr($color, 2, 2));
        $b = hexdec(substr($color, 4, 2));
    } else {
        return array();
    }

    return array('red' => $r, 'green' => $g, 'blue' => $b);
}

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for content images
 *
 * @since Twenty Sixteen 1.0
 *
 * @param string $sizes A source size value for use in a 'sizes' attribute.
 * @param array  $size  Image size. Accepts an array of width and height
 *                      values in pixels (in that order).
 * @return string A source size value for use in a content image 'sizes' attribute.
 */
function twentysixteen_content_image_sizes_attr($sizes, $size) {
    $width = $size[0];

    840 <= $width && $sizes = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 62vw, 840px';

    if ('page' === get_post_type()) {
        840 > $width && $sizes = '(max-width: ' . $width . 'px) 85vw, ' . $width . 'px';
    } else {
        840 > $width && 600 <= $width && $sizes = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 61vw, (max-width: 1362px) 45vw, 600px';
        600 > $width && $sizes = '(max-width: ' . $width . 'px) 85vw, ' . $width . 'px';
    }

    return $sizes;
}

add_filter('wp_calculate_image_sizes', 'twentysixteen_content_image_sizes_attr', 10, 2);

/**
 * Add custom image sizes attribute to enhance responsive image functionality
 * for post thumbnails
 *
 * @since Twenty Sixteen 1.0
 *
 * @param array $attr Attributes for the image markup.
 * @param int   $attachment Image attachment ID.
 * @param array $size Registered image size or flat array of height and width dimensions.
 * @return string A source size value for use in a post thumbnail 'sizes' attribute.
 */
function twentysixteen_post_thumbnail_sizes_attr($attr, $attachment, $size) {
    if ('post-thumbnail' === $size) {
        is_active_sidebar('sidebar-1') && $attr['sizes'] = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 984px) 60vw, (max-width: 1362px) 62vw, 840px';
        !is_active_sidebar('sidebar-1') && $attr['sizes'] = '(max-width: 709px) 85vw, (max-width: 909px) 67vw, (max-width: 1362px) 88vw, 1200px';
    }
    return $attr;
}

add_filter('wp_get_attachment_image_attributes', 'twentysixteen_post_thumbnail_sizes_attr', 10, 3);

/**
 * Modifies tag cloud widget arguments to have all tags in the widget same font size.
 *
 * @since Twenty Sixteen 1.1
 *
 * @param array $args Arguments for tag cloud widget.
 * @return array A new modified arguments.
 */
function twentysixteen_widget_tag_cloud_args($args) {
    $args['largest'] = 1;
    $args['smallest'] = 1;
    $args['unit'] = 'em';
    return $args;
}

add_filter('widget_tag_cloud_args', 'twentysixteen_widget_tag_cloud_args');

function clean_custom_menu($theme_location) {
    global $post;
    if (($theme_location) && ($locations = get_nav_menu_locations()) && isset($locations[$theme_location])) {
        $menu = get_term($locations[$theme_location], 'nav_menu');
        $menu_items = wp_get_nav_menu_items($menu->term_id);

        if (is_home()) {
            $active = 'active';
        }
        $active = '';
        $link_curr = get_permalink($post->ID);
        $count = 0;
        $submenu = false;

        foreach ($menu_items as $menu_item) {
            $link = $menu_item->url;
            $title = $menu_item->title;  
            $icon = get_field('icon',$menu_item->object_id);
            $decription = get_field('description',$menu_item->object_id);
            $arrParent = array(31,35);
            if ($link_curr == $link) {
                $active = 'active';
            } else {
                $active = '';
            }

            if (!$menu_item->menu_item_parent) {
                $parent_id = $menu_item->ID;
                $menu_list .= '<li data-link=' . $parent_id . ' class="nav-item dropdown' . $active . '">' . "\n";
                if ($link != '#') {
                    if (in_array($parent_id, $arrParent)) {
                        //$menu_list .= '<a href="' . $link . '">' . $title . ' <span class="caret"></span></a>' . "\n";
                        $menu_list .= '<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="true" aria-expanded="false">' . $title . '<span class="caret"></span></a>' . "\n";
                    } else {
                        $menu_list .= '<a href="' . $link . '" class="nav-link ' . $active . '">' . $title . '</a>' . "\n";
                    }
                } else {
                    $menu_list .= '<a href="#" class="dropdown-toggle" type="button" data-toggle="dropdown">' . $title . ' <span class="caret"></span></a>' . "\n";
                }
            }

            if ($parent_id == $menu_item->menu_item_parent) {
                $sub_parent_id = $menu->ID;
                if (!$submenu) {                                        
                    $submenu = true;
                    $menu_list .= '<ul class="dropdown-menu child-menu">' . "\n";
                }
                $menu_list .= '<li class="item-nav ' . $active . '">' . "\n";
                $menu_list .= '<img src="'.$icon.'"/>' . "\n";
                $menu_list .= '<a href="' . $link . '">' . $title . '</a>' . "\n";
                $menu_list .= $decription . "\n";
                $menu_list .= '<a class="view-more" href="'.$link.'">Xem thêm >></a>' . "\n";
                $menu_list .= '</li>' . "\n";

                if ($menu_items[$count + 1]->menu_item_parent != $parent_id && $submenu) {
                    $menu_list .= '</ul>' . "\n";
                    $submenu = false;
                }
            }

            if ($menu_items[$count + 1]->menu_item_parent != $parent_id) {
                $menu_list .= '</li>' . "\n";
                $submenu = false;
            }

            $count++;
        }
    } else {
        $menu_list = '<!-- no menu defined in location "' . $theme_location . '" -->';
    }
    echo $menu_list;
}
function clean_custom_menu_mobile($theme_location) {
    global $post;
    if (($theme_location) && ($locations = get_nav_menu_locations()) && isset($locations[$theme_location])) {
        $menu = get_term($locations[$theme_location], 'nav_menu');
        $menu_items = wp_get_nav_menu_items($menu->term_id);

        if (is_home()) {
            $active = 'active';
        }
        $active = '';
        $link_curr = get_permalink($post->ID);
        $count = 0;
        $submenu = false;

        foreach ($menu_items as $menu_item) {
            $link = $menu_item->url;
            $title = $menu_item->title;

            if ($link_curr == $link) {
                $active = 'active';
            } else {
                $active = '';
            }

            if (!$menu_item->menu_item_parent) {
                $parent_id = $menu_item->ID;
                $menu_list .= '<li data-link=' . $parent_id . ' class="nav-item dropdown' . $active . '">' . "\n";
                if ($link != '#') {
                    if ($parent_id == "31") {
                        //$menu_list .= '<a href="' . $link . '">' . $title . ' <span class="caret"></span></a>' . "\n";
                        $menu_list .= '<a class="nav-link dropdown-toggle" data-toggle="dropdown" href="javascript:void(0)" role="button" aria-haspopup="true" aria-expanded="false">' . $title . '<span class="caret"></span></a>' . "\n";
                    } else {
                        $menu_list .= '<a href="' . $link . '" class="nav-link ' . $active . '">' . $title . '</a>' . "\n";
                    }
                } else {
                    $menu_list .= '<a href="#" class="dropdown-toggle" type="button" data-toggle="dropdown">' . $title . ' <span class="caret"></span></a>' . "\n";
                }
            }

            if ($parent_id == $menu_item->menu_item_parent) {
                $sub_parent_id = $menu->ID;
                if (!$submenu) {
                    $submenu = true;
                    $menu_list .= '<ul class="dropdown-menu">' . "\n";
                }
                $menu_list .= '<li class="item-nav ' . $active . '">' . "\n";
                $menu_list .= '<a href="' . $link . '">' . $title . '</a>' . "\n";
                if ($menu_item->menu_item_parent == "313") {
                    echo $menu_item->ID;
                    die;
                }
                $menu_list .= '</li>' . "\n";


                if ($menu_items[$count + 1]->menu_item_parent != $parent_id && $submenu) {
                    $menu_list .= '</ul>' . "\n";
                    $submenu = false;
                }
            }

            if ($menu_items[$count + 1]->menu_item_parent != $parent_id) {
                $menu_list .= '</li>' . "\n";
                $submenu = false;
            }

            $count++;
        }
    } else {
        $menu_list = '<!-- no menu defined in location "' . $theme_location . '" -->';
    }
    echo $menu_list;
}

function clean_custom_menu_footer($theme_location) {
    global $post;
    if (($theme_location) && ($locations = get_nav_menu_locations()) && isset($locations[$theme_location])) {
        $menu = get_term($locations[$theme_location], 'nav_menu');
        $menu_items = wp_get_nav_menu_items($menu->term_id);
        $active = '';
        $link_curr = get_permalink($post->ID);
        $count = 0;
        $submenu = false;

        foreach ($menu_items as $menu_item) {
            $link = $menu_item->url;
            $title = $menu_item->title;
            if ($link_curr == $link) {
                $active = 'active';
            } else {
                $active = '';
            }

            if (!$menu_item->menu_item_parent) {
                $parent_id = $menu_item->ID;
                $menu_list .= '<li class="arrow ' . $active . '">' . "\n";
                $menu_list .= '<span class="icon-list-footer" >></span><a href="' . $link . '">' . $title . '</a>' . "\n";
            }

            if ($menu_items[$count + 1]->menu_item_parent != $parent_id) {
                $menu_list .= '</li>' . "\n";
                $submenu = false;
            }

            $count++;
        }
    } else {
        $menu_list = '<!-- no menu defined in location "' . $theme_location . '" -->';
    }
    echo $menu_list;
}

function httpGet($url) {
    $ch = curl_init();

    curl_setopt($ch, CURLOPT_URL, $url);
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
//  curl_setopt($ch,CURLOPT_HEADER, false); 

    $output = curl_exec($ch);

    curl_close($ch);
    return $output;
}

add_action('wp_ajax_save_contact_form', 'save_contact_form');
add_action('wp_ajax_nopriv_save_contact_form', 'save_contact_form');

function save_contact_form() {
    global $wpdb;
    $name = isset($_POST['fullname']) ? $_POST['fullname'] : '';
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $phone = isset($_POST['phone']) ? $_POST['phone'] : '';
    $content = isset($_POST['content']) ? $_POST['content'] : '';
    $wpdb->insert(
            'mvv_contact', array(
        'name' => $name,
        'email' => $email,
        'phone' => $phone,
        'content' => $content,
        'is_delete' => '0',
        'created_date' => date('Y-m-d H:i:s')
            ), array(
        '%s',
        '%s',
        '%s',
        '%s',
        '%s',
        '%s'
            )
    );
    $id_insert = $wpdb->insert_id;
    if ($id_insert > 0) {
        $to = 'tanhoang@mvv.edu.vn';
          $subject = 'MVVEverlearn  - Thông tin liên hệ';

          $body = '<h2 class="title" style="margin-bottom:35px;margin-top: 25px;font-size: 18px;text-transform: uppercase;">

          Thông tin liên hệ <span style="color:#c4903f">❖ MVVEverlearn</span>

          </h2>';

          $body .= '<table width="100%">

          <tr style="height:30px">

          <td width="150px"> <b>Họ & tên : </b> </td>

          <td width="250px"> ' . $name . '</td>

          </tr>

          <tr style="height:30px">

          <td width="150px"> <b>Email : </b> </td>

          <td width="250px"> ' . $email . '</td>

          </tr>

          <tr style="height:30px">

          <td width="150px"> <b>Số điện thoại : </b> </td>

          <td width="250px"> ' . $phone . '</td>

          </tr>
          <tr style="height:30px">

          <td width="150px"> <b>Nội dung : </b> </td>

          <td width="250px"> ' . $content . '</td>

          </tr>

          </table>';
         send_email($to, $subject, $body, $name); 
        echo 1;
        die;
    } else {
        echo 0;
        die;
    }
}

add_action('wp_ajax_save_solution_form', 'save_solution_form');
add_action('wp_ajax_nopriv_save_solution_form', 'save_solution_form');

function save_solution_form() {
    global $wpdb;
    $name = isset($_POST['fullname']) ? $_POST['fullname'] : '';
    $company = isset($_POST['company']) ? $_POST['company'] : '';
    $job_title = isset($_POST['job_title']) ? $_POST['job_title'] : '';
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $phone = isset($_POST['phone']) ? $_POST['phone'] : '';
    $fieldName = isset($_POST['fieldName']) ? $_POST['fieldName'] : '';
    $place = isset($_POST['place']) ? $_POST['place'] : '';
    $comment = isset($_POST['comment']) ? $_POST['comment'] : '';
    $wpdb->insert(
            'mvv_register_solution', array(
        'name' => $name,
        'email' => $email,
        'phone' => $phone,
        'company' => $company,
        'position' => $job_title,
        'comment' => $comment,
        'place' => $place,
        'field_name' => $fieldName,
        'is_delete' => '0',
        'created_date' => date('Y-m-d H:i:s')
            ), array(
        '%s',
        '%s',
        '%s',
        '%s',
        '%s',
        '%s',
        '%s',
        '%s',
        '%s',
        '%s'
            )
    );
    $id_insert = $wpdb->insert_id;
    if ($id_insert > 0) {
        /* $to = 'info@mvv.edu.vn';
          $subject = 'MVVCoaching  - Đăng ký Giải pháp';

          $body = '<h2 class="title" style="margin-bottom:35px;margin-top: 25px;font-size: 18px;text-transform: uppercase;">

          Thông tin đăng ký <span style="color:#c4903f">❖ MVVCoaching</span>

          </h2>';

          $body .= '<table width="100%">

          <tr style="height:30px">

          <td width="150px"> <b>Họ & tên : </b> </td>

          <td width="250px"> ' . $name . '</td>

          </tr>

          <tr style="height:30px">

          <td width="150px"> <b>Email : </b> </td>

          <td width="250px"> ' . $email . '</td>

          </tr>

          <tr style="height:30px">

          <td width="150px"> <b>Số điện thoại : </b> </td>

          <td width="250px"> ' . $phone . '</td>

          </tr>
          <tr style="height:30px">

          <td width="150px"> <b>Công ty : </b> </td>

          <td width="250px"> ' . $company . '</td>

          </tr>
          <tr style="height:30px">

          <td width="150px"> <b>Chức vụ : </b> </td>

          <td width="250px"> ' . $position . '</td>

          </tr>
          <tr style="height:30px">

          <td width="150px"> <b>Nhu cầu sử dụng của doanh nghiệp : </b> </td>

          <td width="250px"> ' . $content . '</td>

          </tr>
          <tr style="height:30px">

          <td width="150px"> <b>Giải pháp : </b> </td>

          <td width="250px"> ' . $from_page . '</td>

          </tr>

          </table>';
          send_email($to, $subject, $body, $name); */
        echo 1;
        die;
    } else {
        echo 0;
        die;
    }
}

add_action('wp_ajax_save_newsletter_form', 'save_newsletter_form');
add_action('wp_ajax_nopriv_save_newsletter_form', 'save_newsletter_form');

function save_newsletter_form() {
    global $wpdb;
    $email = isset($_POST['email']) ? $_POST['email'] : '';
    $wpdb->insert(
            'mvv_register_newsletter', array(
        'email' => $email,
        'is_delete' => '0',
        'created_date' => date('Y-m-d H:i:s')
            ), array(
        '%s',
        '%s',
        '%s'
            )
    );
    $id_insert = $wpdb->insert_id;
    if ($id_insert > 0) {
        $to = 'info@mvv.edu.vn';
        $subject = 'MVVCoaching  - Đăng ký Newsletter';

        $body = '<h2 class="title" style="margin-bottom:35px;margin-top: 25px;font-size: 18px;text-transform: uppercase;">

                           Thông tin đăng ký <span style="color:#c4903f">❖ MVVCoaching</span> 

                        </h2>';

        $body .= '<table width="100%">

                        <tr style="height:30px">

                           <td width="150px"> <b>Email : </b> </td>

                           <td width="250px"> ' . $email . '</td>

                        </tr>

                    </table>';
        send_email($to, $subject, $body, $name);
        echo 1;
        die;
    } else {
        echo 0;
        die;
    }
}

add_action('wp_ajax_refesh_capcha', 'refesh_capcha');
add_action('wp_ajax_nopriv_refesh_capcha', 'refesh_capcha');

function refesh_capcha() {
    session_start();
    $_SESSION = array();

    include("simple-php-captcha.php");
    $_SESSION['captcha'] = simple_php_captcha();
    echo $_SESSION['captcha']['image_src'];
    die;
}

/**
 * Register a custom menu page.
 */
function wp_register_manage_booking() {
    add_menu_page(
            'Contact', 'Contact', 'manage_options', 'custompagebook', 'wp_mamage_book', '', 18
    );
}

add_action('admin_menu', 'wp_register_manage_booking');

/**
 * Display a custom menu page
 */
function wp_mamage_book() {
    global $wpdb;
    $limit = 10;
    $start = isset($_GET['start']) ? $_GET['start'] : 0;
    _e('<h1>Contact<h1/>');
    _e('<table class="wp-list-table widefat fixed striped posts"><thead><tr>');
    _e('<td width="25px">STT</td>');
    _e('<td width="16px">...</td>');
    _e('<td width="145px">Họ & tên</td>');
    _e('<td>Email </td>');
    _e('<td>Điện thoại</td>');
    _e('<td>Nội dung</td>');
    _e('<td>Ngày tạo</td>');
    _e('</tr></thead>');
    _e('<tbody>');

    $books = $wpdb->get_results(
            "
    SELECT id,name,email,phone,content ,created_date
    FROM mvv_contact where is_delete = 0 order by created_date desc
    "
    );
    $stt = 1;
    foreach ($books as $book) {
        _e('<tr>');
        _e('<td>' . $stt . '</td>');
        _e('<td><img style="cursor:pointer" class="btnDelete" data-id = "' . $book->id . '" src="' . get_admin_url() . 'images/icon_delete.png" /></td>');
        _e('<td>' . $book->name . '</td>');
        _e('<td>' . $book->email . '</td>');
        _e('<td>' . $book->phone . '</td>');
        _e('<td>' . $book->content . '</td>');
        _e('<td>' . date('d/m/Y H:i:s', strtotime($book->created_date)) . '</td>');
        _e('</tr>');
        $stt++;
    }
    _e('</tbody>');
    _e('</table>');
    _e('<script src="' . get_template_directory_uri() . '/js/jquery-min.js"></script>');
    _e('<script> 
    $(document).ready(function($){
         $( ".btnDelete" ).click(function() {
             var id = $(this).attr("data-id");
             $.ajax({ 
                 data: {action: "remove_booking",id:id},
                 type: "post",
                 url: "' . get_admin_url() . 'admin-ajax.php",
                 success: function(data) {
                    alert("Xóa thành công");
                    window.location.reload();
                 }
              }); 
         });
    });</script>');
}

function ToMySQLDate($str) {
    if ($str == '') {
        return '0000-00-00';
    }
    $arr = explode('-', $str);
    return $arr[2] . '/' . $arr[0] . '/' . $arr[1];
}

add_action('wp_ajax_remove_booking', 'remove_booking');
add_action('wp_ajax_nopriv_remove_booking', 'remove_booking');

function remove_booking() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_contact', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_solution', 'remove_register_solution');
add_action('wp_ajax_nopriv_remove_register_solution', 'remove_register_solution');

function remove_register_solution() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_register_solution', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_event', 'remove_register_event');
add_action('wp_ajax_nopriv_remove_register_event', 'remove_register_event');

function remove_register_event() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_register_event', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_course', 'remove_register_course');
add_action('wp_ajax_nopriv_remove_register_course', 'remove_register_course');

function remove_register_course() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_register_course', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_download', 'remove_register_download');
add_action('wp_ajax_nopriv_remove_register_download', 'remove_register_download');

function remove_register_download() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_info_download', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_course_elearning', 'remove_register_course_elearning');
add_action('wp_ajax_nopriv_remove_register_course_elearning', 'remove_register_course_elearning');

function remove_register_course_elearning() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_register_course_elearning', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_newsletter', 'remove_register_newsletter');
add_action('wp_ajax_nopriv_remove_register_newsletter', 'remove_register_newsletter');

function remove_register_newsletter() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_register_newsletter', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_live_demo', 'remove_register_live_demo');
add_action('wp_ajax_nopriv_remove_register_live_demo', 'remove_register_live_demo');

function remove_register_live_demo() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_live_demo', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

add_action('wp_ajax_remove_register_ho_so', 'remove_register_ho_so');
add_action('wp_ajax_nopriv_remove_register_ho_so', 'remove_register_ho_so');
function remove_register_ho_so() {
    global $wpdb;
    $id = isset($_POST['id']) ? $_POST['id'] : '';
    $wpdb->update(
            'mvv_ho_so', array(
        'is_delete' => 1
            ), array('id' => $id), array(
        '%d'
            ), array('%d')
    );
    echo 1;
    die;
}

function send_email($to, $subject, $message, $fullname) {

    /**

     * This example shows settings to use when sending via Google's Gmail servers.

     */
    //SMTP needs accurate times, and the PHP time zone MUST be set
    //This should be done in your php.ini, but this is how to do it if you don't have access to that

    date_default_timezone_set('Etc/UTC');



    require 'email/PHPMailerAutoload.php';



    //Create a new PHPMailer instance

    $mail = new PHPMailer;



    //Tell PHPMailer to use SMTP

    $mail->isSMTP();



    //Enable SMTP debugging
    // 0 = off (for production use)
    // 1 = client messages
    // 2 = client and server messages

    $mail->SMTPDebug = 0;



    //Ask for HTML-friendly debug output

    $mail->Debugoutput = 'html';



    $mail->CharSet = 'UTF-8';



    //Set the hostname of the mail server

    $mail->Host = 'smtp.gmail.com';

    // use
    // $mail->Host = gethostbyname('smtp.gmail.com');
    // if your network does not support SMTP over IPv6
    //Set the SMTP port number - 587 for authenticated TLS, a.k.a. RFC4409 SMTP submission

    $mail->Port = 465;



    //Set the encryption system to use - ssl (deprecated) or tls

    $mail->SMTPSecure = 'ssl';



    //Whether to use SMTP authentication

    $mail->SMTPAuth = true;



    //Username to use for SMTP authentication - use full email address for gmail

    $mail->Username = "system.greenhld@gmail.com";



    //Password to use for SMTP authentication

    $mail->Password = "donhuhung0405";



    //Set who the message is to be sent from

    $mail->setFrom('system.greenhld@gmail.com', 'MVV Coaching');



    //Set an alternative reply-to address
    //$mail->addReplyTo('replyto@example.com', 'First Last');
    //Set who the message is to be sent to

    $mail->addAddress($to, 'MVV Coaching');



    //Set the subject line

    $mail->Subject = $subject;



    //Read an HTML message body from an external file, convert referenced images to embedded,
    //convert HTML into a basic plain-text alternative body

    $mail->msgHTML($message);



    //Replace the plain text body with one created manually
    //$mail->AltBody = 'This is a plain-text message body';
    //Attach an image file
    //$mail->addAttachment('images/phpmailer_mini.png');
    //send the message, check for errors

    if (!$mail->send()) {

        echo "Mailer Error: " . $mail->ErrorInfo;
    } else {

        echo "Message sent!";
    }

    die;
}

function wpdocs_codex_banner_init() {

    $labels = array(
        'name' => _x('Banners', 'Post type general name', 'textdomain'),
        'singular_name' => _x('Banner', 'Post type singular name', 'textdomain'),
        'menu_name' => _x('Banners', 'Admin Menu text', 'textdomain'),
        'name_admin_bar' => _x('Banner', 'Add New on Toolbar', 'textdomain'),
        'add_new' => __('Add New', 'textdomain'),
        'add_new_item' => __('Add New Banner', 'textdomain'),
        'new_item' => __('New Banner', 'textdomain'),
        'edit_item' => __('Edit Banner', 'textdomain'),
        'view_item' => __('View Banner', 'textdomain'),
        'all_items' => __('All Banners', 'textdomain'),
        'search_items' => __('Search Banners', 'textdomain'),
        'parent_item_colon' => __('Parent Banners:', 'textdomain'),
        'not_found' => __('No banners found.', 'textdomain'),
        'not_found_in_trash' => __('No banners found in Trash.', 'textdomain'),
        'featured_image' => _x('Banner Featured Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'textdomain'),
        'set_featured_image' => _x('Set featured image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'remove_featured_image' => _x('Remove featured image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'use_featured_image' => _x('Use as featured image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'archives' => _x('Banner archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'textdomain'),
        'insert_into_item' => _x('Insert into banner', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'textdomain'),
        'uploaded_to_this_item' => _x('Uploaded to this banner', 'Overrides the “Uploaded to this post”/”Uploaded to this page” phrase (used when viewing media attached to a post). Added in 4.4', 'textdomain'),
        'filter_items_list' => _x('Filter banners list', 'Screen reader text for the filter links heading on the post type listing screen. Default “Filter posts list”/”Filter pages list”. Added in 4.4', 'textdomain'),
        'items_list_navigation' => _x('Banners list navigation', 'Screen reader text for the pagination heading on the post type listing screen. Default “Posts list navigation”/”Pages list navigation”. Added in 4.4', 'textdomain'),
        'items_list' => _x('Banners list', 'Screen reader text for the items list heading on the post type listing screen. Default “Posts list”/”Pages list”. Added in 4.4', 'textdomain'),
    );



    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'banner'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
    );



    register_post_type('banner', $args);
}

add_action('init', 'wpdocs_codex_banner_init');

add_action('post_edit_form_tag', 'update_edit_form');

function update_edit_form() {
    echo ' enctype="multipart/form-data"';
}

// end update_edit_form

add_action('save_post', 'save_custom_meta_data');

// Saving the uploaded file details
function save_custom_meta_data($id) {
    /* --- security verification --- */
    if (isset($_POST['wp_custom_attachment_nonce']))
        if (!wp_verify_nonce($_POST['wp_custom_attachment_nonce'], plugin_basename(__FILE__))) {
            return $id;
        } // end if  

    if (defined('DOING_AUTOSAVE') && DOING_AUTOSAVE) {
        return $id;
    } // end if  
    if (isset($_POST['banner']))
        if ('page' == $_POST['banner']) {
            if (!current_user_can('edit_page', $id)) {
                return $id;
            } // end if  
        } else {
            if (!current_user_can('edit_page', $id)) {
                return $id;
            } // end if  
        } // end if  
        /* - end security verification - */

    // Make sure the file array isn't empty  
    if (!empty($_FILES['wp_custom_attachment']['name'])) {
        // Get the file type of the upload  
        $flag = 0;
        for ($i = 0; $i < count($_FILES['wp_custom_attachment']['name']); $i++) {
            if (!empty($_FILES['wp_custom_attachment']['name'][$i])) {
                $flag = 1;
                // Use the WordPress API to upload the multiple files
                $upload[] = wp_upload_bits($_FILES['wp_custom_attachment']['name'][$i], null, file_get_contents($_FILES['wp_custom_attachment']['tmp_name'][$i]));
            }
        }
        if ($flag == 1)
            update_post_meta($id, 'wp_custom_attachment', $upload);
    }
}

/**

 * Register a custom post type called "article".

 *

 * @see get_post_type_labels() for label keys.

 */
function wpdocs_codex_article_init() {

    $labels = array(
        'name' => _x('Articles', 'Post type general name', 'textdomain'),
        'singular_name' => _x('Article', 'Post type singular name', 'textdomain'),
        'menu_name' => _x('Articles', 'Admin Menu text', 'textdomain'),
        'name_admin_bar' => _x('Article', 'Add New on Toolbar', 'textdomain'),
        'add_new' => __('Add New', 'textdomain'),
        'add_new_item' => __('Add New Article', 'textdomain'),
        'new_item' => __('New Article', 'textdomain'),
        'edit_item' => __('Edit Article', 'textdomain'),
        'view_item' => __('View Article', 'textdomain'),
        'all_items' => __('All Articles', 'textdomain'),
        'search_items' => __('Search Articles', 'textdomain'),
        'parent_item_colon' => __('Parent Articles:', 'textdomain'),
        'not_found' => __('No articles found.', 'textdomain'),
        'not_found_in_trash' => __('No articles found in Trash.', 'textdomain'),
        'featured_image' => _x('Article Featured Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'textdomain'),
        'set_featured_image' => _x('Set featured image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'remove_featured_image' => _x('Remove featured image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'use_featured_image' => _x('Use as featured image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'archives' => _x('Article archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'textdomain'),
        'insert_into_item' => _x('Insert into article', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'textdomain'),
        'uploaded_to_this_item' => _x('Uploaded to this article', 'Overrides the “Uploaded to this post”/”Uploaded to this page” phrase (used when viewing media attached to a post). Added in 4.4', 'textdomain'),
        'filter_items_list' => _x('Filter articles list', 'Screen reader text for the filter links heading on the post type listing screen. Default “Filter posts list”/”Filter pages list”. Added in 4.4', 'textdomain'),
        'items_list_navigation' => _x('Articles list navigation', 'Screen reader text for the pagination heading on the post type listing screen. Default “Posts list navigation”/”Pages list navigation”. Added in 4.4', 'textdomain'),
        'items_list' => _x('Articles list', 'Screen reader text for the items list heading on the post type listing screen. Default “Posts list”/”Pages list”. Added in 4.4', 'textdomain'),
    );



    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'tin-tuc'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
    );



    register_post_type('article', $args);
}

add_action('init', 'wpdocs_codex_article_init');

// hook into the init action and call create_article_taxonomies when it fires

add_action('init', 'create_article_taxonomies', 0);

// create two taxonomies, categories and tags for the post type "article"

function create_article_taxonomies() {

    // Add new taxonomy, make it hierarchical (like categories)

    $labels = array(
        'name' => _x('Categories', 'taxonomy general name'),
        'singular_name' => _x('Category', 'taxonomy singular name'),
        'search_items' => __('Search Categories'),
        'all_items' => __('All Categories'),
        'parent_item' => __('Parent Category'),
        'parent_item_colon' => __('Parent Category:'),
        'edit_item' => __('Edit Category'),
        'update_item' => __('Update Category'),
        'add_new_item' => __('Add New Category'),
        'new_item_name' => __('New Category Name'),
        'menu_name' => __('Categories'),
    );



    $args = array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'danh-muc-tin-tuc'),
    );



    register_taxonomy('danh-muc-tin-tuc', array('article'), $args);



    // Add new taxonomy, NOT hierarchical (like tags)

    $labels = array(
        'name' => _x('Tags', 'taxonomy general name'),
        'singular_name' => _x('Tag', 'taxonomy singular name'),
        'search_items' => __('Search Tags'),
        'popular_items' => __('Popular Tags'),
        'all_items' => __('All Tags'),
        'parent_item' => null,
        'parent_item_colon' => null,
        'edit_item' => __('Edit Tag'),
        'update_item' => __('Update Tag'),
        'add_new_item' => __('Add New Tag'),
        'new_item_name' => __('New Tag Name'),
        'separate_items_with_commas' => __('Separate tags with commas'),
        'add_or_remove_items' => __('Add or remove tags'),
        'choose_from_most_used' => __('Choose from the most used tags'),
        'not_found' => __('No tags found.'),
        'menu_name' => __('Tags'),
    );



    $args = array(
        'hierarchical' => false,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var' => true,
        'rewrite' => array('slug' => 'tag2'),
    );



    register_taxonomy('tag2', 'article', $args);
}


/**

 * Register a custom post type called "The commitment".

 *

 * @see get_post_type_labels() for label keys.

 */
function wpdocs_codex_commitment_init() {

    $labels = array(
        'name' => _x('The Commitments', 'Post type general name', 'textdomain'),
        'singular_name' => _x('The Commitments', 'Post type singular name', 'textdomain'),
        'menu_name' => _x('The Commitments', 'Admin Menu text', 'textdomain'),
        'name_admin_bar' => _x('The Commitments', 'Add New on Toolbar', 'textdomain'),
        'add_new' => __('Add New', 'textdomain'),
        'add_new_item' => __('Add New The Commitments', 'textdomain'),
        'new_item' => __('New The Commitment', 'textdomain'),
        'edit_item' => __('Edit The Commitment', 'textdomain'),
        'view_item' => __('View The Commitment', 'textdomain'),
        'all_items' => __('All The Commitment', 'textdomain'),
        'search_items' => __('Search Articles', 'textdomain'),
        'parent_item_colon' => __('Parent The Commitment:', 'textdomain'),
        'not_found' => __('No articles found.', 'textdomain'),
        'not_found_in_trash' => __('No The Commitments found in Trash.', 'textdomain'),
        'featured_image' => _x('The Commitments Featured Image', 'Overrides the “Featured Image” phrase for this post type. Added in 4.3', 'textdomain'),
        'set_featured_image' => _x('Set featured image', 'Overrides the “Set featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'remove_featured_image' => _x('Remove featured image', 'Overrides the “Remove featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'use_featured_image' => _x('Use as featured image', 'Overrides the “Use as featured image” phrase for this post type. Added in 4.3', 'textdomain'),
        'archives' => _x('Projects archives', 'The post type archive label used in nav menus. Default “Post Archives”. Added in 4.4', 'textdomain'),
        'insert_into_item' => _x('Insert into article', 'Overrides the “Insert into post”/”Insert into page” phrase (used when inserting media into a post). Added in 4.4', 'textdomain'),
        'uploaded_to_this_item' => _x('Uploaded to this article', 'Overrides the “Uploaded to this post”/”Uploaded to this page” phrase (used when viewing media attached to a post). Added in 4.4', 'textdomain'),
        'filter_items_list' => _x('Filter articles list', 'Screen reader text for the filter links heading on the post type listing screen. Default “Filter posts list”/”Filter pages list”. Added in 4.4', 'textdomain'),
        'items_list_navigation' => _x('Projects list navigation', 'Screen reader text for the pagination heading on the post type listing screen. Default “Posts list navigation”/”Pages list navigation”. Added in 4.4', 'textdomain'),
        'items_list' => _x('Projects list', 'Screen reader text for the items list heading on the post type listing screen. Default “Posts list”/”Pages list”. Added in 4.4', 'textdomain'),
    );



    $args = array(
        'labels' => $labels,
        'public' => true,
        'publicly_queryable' => true,
        'show_ui' => true,
        'show_in_menu' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'commitment'),
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => null,
        'supports' => array('title', 'editor', 'thumbnail', 'custom-fields'),
    );



    register_post_type('commitment', $args);
}

add_action('init', 'wpdocs_codex_commitment_init');


add_action('init', 'create_commitment_taxonomies', 0);

// create two taxonomies, categories and tags for the post type "commitment"

function create_commitment_taxonomies() {

    // Add new taxonomy, make it hierarchical (like categories)

    $labels = array(
        'name' => _x('Categories', 'taxonomy general name'),
        'singular_name' => _x('Category', 'taxonomy singular name'),
        'search_items' => __('Search Categories'),
        'all_items' => __('All Categories'),
        'parent_item' => __('Parent Category'),
        'parent_item_colon' => __('Parent Category:'),
        'edit_item' => __('Edit Category'),
        'update_item' => __('Update Category'),
        'add_new_item' => __('Add New Category'),
        'new_item_name' => __('New Category Name'),
        'menu_name' => __('Categories'),
    );



    $args = array(
        'hierarchical' => true,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'query_var' => true,
        'rewrite' => array('slug' => 'list-commitment'),
    );



    register_taxonomy('list-commitment', array('commitment'), $args);



    // Add new taxonomy, NOT hierarchical (like tags)

    $labels = array(
        'name' => _x('Tags', 'taxonomy general name'),
        'singular_name' => _x('Tag', 'taxonomy singular name'),
        'search_items' => __('Search Tags'),
        'popular_items' => __('Popular Tags'),
        'all_items' => __('All Tags'),
        'parent_item' => null,
        'parent_item_colon' => null,
        'edit_item' => __('Edit Tag'),
        'update_item' => __('Update Tag'),
        'add_new_item' => __('Add New Tag'),
        'new_item_name' => __('New Tag Name'),
        'separate_items_with_commas' => __('Separate tags with commas'),
        'add_or_remove_items' => __('Add or remove tags'),
        'choose_from_most_used' => __('Choose from the most used tags'),
        'not_found' => __('No tags found.'),
        'menu_name' => __('Tags'),
    );



    $args = array(
        'hierarchical' => false,
        'labels' => $labels,
        'show_ui' => true,
        'show_admin_column' => true,
        'update_count_callback' => '_update_post_term_count',
        'query_var' => true,
        'rewrite' => array('slug' => 'tag2'),
    );



    register_taxonomy('tag2', 'commitment', $args);
}


function format_string($string, $len) {

    $dot = "";

    if ($len > strlen($string)) {

        $len = strlen($string);
    } else {

        $dot = " ...";
    }

    $pos = strpos($string, ' ', $len);

    if ($pos) {

        $string = substr($string, 0, $pos);
    } else {

        $string = substr($string, 0, $len);
    }

    return $string . $dot;
}

function cut_string($string, $len) {

    $totalWord = explode(" ", $string);



    if (count($totalWord) < $len) {

        return $string;
    } else {

        $str_rs = array();

        for ($a = 0; $a < $len; $a++) {

            $str_rs[] = $totalWord[$a];
        }

        $dot = ' ...';

        return implode(" ", $str_rs) . $dot;
    }
}

function everlearn_pagination($numpages = '', $pagerange = '', $paged = '') {


    $sort = (isset($_REQUEST['sort']) ) ? $_REQUEST['sort'] : "";
    $order_url = (isset($_REQUEST['order']) ) ? $_REQUEST['order'] : "";

    if (empty($pagerange)) {

        $pagerange = 2;
    }



    /**

     * This first part of our function is a fallback

     * for custom pagination inside a regular loop that

     * uses the global $paged and global $wp_query variables.

     * 

     * It's good because we can now override default pagination

     * in our theme, and use this function in default quries

     * and custom queries.

     */
    //global $paged;

    if (empty($paged)) {

        $paged = 1;
    }

    if ($numpages == '') {

        global $wp_query;

        $numpages = $wp_query->max_num_pages;

        if (!$numpages) {

            $numpages = 1;
        }
    }



    /**

     * We construct the pagination arguments to enter into our paginate_links

     * function. 

     */
    $args = array(
        'base' => '%_%',
        'format' => '?paged=%#%',
        'total' => 1,
        'current' => 0,
        'show_all' => false,
        'end_size' => 1,
        'mid_size' => 2,
        'prev_next' => true,
        'prev_text' => __('« Previous'),
        'next_text' => __('Next »'),
        'type' => 'plain',
        'add_args' => false,
        'add_fragment' => '',
        'before_page_number' => '',
        'after_page_number' => ''
    );

    if ($sort && $order_url) {
        $pagination_args = array(
            'base' => '%_%',
            'format' => '?page=%#%',
            'total' => $numpages,
            'current' => $paged,
            'show_all' => False,
            'end_size' => 1,
            'mid_size' => $pagerange,
            'prev_next' => True,
            'prev_text' => __('&laquo;'),
            'next_text' => __('&raquo;'),
            'type' => 'list',
            'add_args' => array('sort' => $sort, 'order' => $order_url),
            'add_fragment' => ''
        );
    } else {
        $pagination_args = array(
            'base' => '%_%',
            'format' => '?page=%#%',
            'total' => $numpages,
            'current' => $paged,
            'show_all' => False,
            'end_size' => 1,
            'mid_size' => $pagerange,
            'prev_next' => True,
            'prev_text' => __('&laquo;'),
            'next_text' => __('&raquo;'),
            'type' => 'list',
            'add_args' => false,
            'add_fragment' => ''
        );
    }



    $paginate_links = paginate_links($pagination_args);

    if ($paginate_links) {
        echo str_replace("<ul class='page-numbers'>", '<ul class="pagination mx-auto">', $paginate_links);
    }
}

if (!function_exists('fix_no_editor_on_posts_page')) {



    /**

     * Add the wp-editor back into WordPress after it was removed in 4.2.2.

     *

     * @param Object $post

     * @return void

     */
    function fix_no_editor_on_posts_page($post) {

        if (isset($post) && $post->ID != get_option('page_for_posts')) {

            return;
        }



        remove_action('edit_form_after_title', '_wp_posts_page_notice');

        add_post_type_support('page', 'editor');

        add_post_type_support('post', 'editor');

        add_post_type_support('article', 'editor');
    }

    add_action('edit_form_after_title', 'fix_no_editor_on_posts_page', 0);
}

add_action('init', 'myStartSession', 1);

function myStartSession() {
    if (!session_id()) {
        session_start();
    }
}

function bidirectional_acf_update_value($value, $post_id, $field) {

    // vars
    $field_name = $field['name'];
    $field_key = $field['key'];
    $global_name = 'is_updating_' . $field_name;


    // bail early if this filter was triggered from the update_field() function called within the loop below
    // - this prevents an inifinte loop
    if (!empty($GLOBALS[$global_name]))
        return $value;


    // set global variable to avoid inifite loop
    // - could also remove_filter() then add_filter() again, but this is simpler
    $GLOBALS[$global_name] = 1;


    // loop over selected posts and add this $post_id
    if (is_array($value)) {

        foreach ($value as $post_id2) {

            // load existing related posts
            $value2 = get_field($field_name, $post_id2, false);


            // allow for selected posts to not contain a value
            if (empty($value2)) {

                $value2 = array();
            }


            // bail early if the current $post_id is already found in selected post's $value2
            if (in_array($post_id, $value2))
                continue;


            // append the current $post_id to the selected post's 'related_posts' value
            $value2[] = $post_id;


            // update the selected post's value (use field's key for performance)
            update_field($field_key, $value2, $post_id2);
        }
    }


    // find posts which have been removed
    $old_value = get_field($field_name, $post_id, false);

    if (is_array($old_value)) {

        foreach ($old_value as $post_id2) {

            // bail early if this value has not been removed
            if (is_array($value) && in_array($post_id2, $value))
                continue;


            // load existing related posts
            $value2 = get_field($field_name, $post_id2, false);


            // bail early if no value
            if (empty($value2))
                continue;


            // find the position of $post_id within $value2 so we can remove it
            $pos = array_search($post_id, $value2);


            // remove
            unset($value2[$pos]);


            // update the un-selected post's value (use field's key for performance)
            update_field($field_key, $value2, $post_id2);
        }
    }


    // reset global varibale to allow this filter to function as per normal
    $GLOBALS[$global_name] = 0;


    // return
    return $value;
}

add_filter('acf/update_value/name=related_posts', 'bidirectional_acf_update_value', 10, 3);

function the_breadcrumb() {
    $post_type = get_post_type(get_the_ID());
    $category = "";
    switch ($post_type) {
        case "article":
            $category = "Blog";
            $link = "/blog";
            break;
        case "course":
            $category = "Lịch khai giảng";
            $link = "/lich-khai-giang";
            break;
        case "huan-luyen-vien":
            $category = "Huấn luyện viên";
            $link = "/giang-vien";
            break;
        case "course-elearning":
            $category = "Khóa học Elearning";
            $link = "/elearning";
            break;
    }
    $breadcrum = '<div class="breadcrum">';
    $breadcrum .= '<div class="container">';
    $breadcrum .= '<div class="row">';
    $breadcrum .= '<div class="w-100">';
    $breadcrum .= '<div class="bit">';
    $breadcrum .= '<a href="/">Trang chủ ></a></div>';
    if ($category) {
        $breadcrum .= '<div class="bit">';
        $breadcrum .= '<a href="' . $link . '"> ' . $category . ' ></a></div>';
    }
    $breadcrum .= '<div class="bit">';
    $breadcrum .= '<a class="last"> ' . esc_html(get_the_title()) . '</a></div>';

    $breadcrum .= '</div>';
    $breadcrum .= '</div>';
    $breadcrum .= '</div>';
    $breadcrum .= '</div>';
    echo $breadcrum;
}
