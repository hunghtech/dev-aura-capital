<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'aura-capit-2019' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'tP#j2B.m.D4{Z+nn,.Gqa@.+>DhbKou!r|l)_`p5cOFrtm)sikpD$Qh}^x#/>BN%' );
define( 'SECURE_AUTH_KEY',  '*Cbj0<P2Gz!z-A*5#K*A6IAOGI)BqJ7DP]Q$_;YX}PzY?F?Tk*RsD}v_EjNS&N)?' );
define( 'LOGGED_IN_KEY',    'mGIQZdeSaS`QiPn7n?RaWhO};oLI5C0Uhq.lzuWzpH?q^a8RAdWHCz1:E?S%+*IU' );
define( 'NONCE_KEY',        '=GY2=5H6yjJr81O7(uR};Gp([k_p$5Azha-oJ=!#}~+3d$T=!m+|RwR_`Mi8@8B{' );
define( 'AUTH_SALT',        '}v8BHq0(yN}E`=V)v(J[] fyZ}zI~ddtf19bdZRm{.&[BNR #UA];G>!|u#cqdB#' );
define( 'SECURE_AUTH_SALT', '>|s}VWH oRxh)*Ag~[&5J~x!S:9aG=*n?B>`8gG^1E]Ry!Rvr^5_?:rq8zOuBXK&' );
define( 'LOGGED_IN_SALT',   ' /PRc&.6v3L*wd[kPQCy`mOzSa@&;~Yx,sGZ&`T^/P/G?>H~sA5HdN*1xkYClh3.' );
define( 'NONCE_SALT',       '+$%pxR*2&<QyQ[_FgYEe}Mz;c_t]y`B&2|MW%6Qz%Y-I]P(!O3:1+hmMEl1/n!J4' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'arcp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
