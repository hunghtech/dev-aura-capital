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
define('DB_NAME', 'aura-capit-2019');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'nur43C^ji]8VD]FgP,SmBhXZu-NUUK#X3NzX[/z{VmPgjq01$4r7})t$>N`4)CaC');
define('SECURE_AUTH_KEY',  'Gkn3RQp|7t{51}W2Ft6Z)Mzntey/?VTA$QbbZ6tit4T1u;McxxkIYaBjxWJnp)1X');
define('LOGGED_IN_KEY',    'nd23C=UnTGBf;}=Mg_EWT8oh{h%jJh-`i^$$88o$:`ID}4?WHlY07I l+L+*d.Ic');
define('NONCE_KEY',        'nnS|GZQ ZY5DaR86QXusNcfP>aYAS3OF+G}f}!=%eg}R>,)!;--/S_[Lqn9lilu?');
define('AUTH_SALT',        'N&9VEOF0kbl}[WsSP!{!B-(U!v!FrNd{C3XV5nhZgHowl|*(K8j!;>vI{UZInU7s');
define('SECURE_AUTH_SALT', 'au)*X8^P@ Bs+9B/um)sp[W6vS9II4^V$o#^*<n$:H=%5-S.-YI[(7[9!UwNb#IW');
define('LOGGED_IN_SALT',   'P~dlNm_8NTDlt=TaprI9D<VG0e>o>a2H:,TB[s^~ZLXz8o)BA=xxt|`=T/iNl/7A');
define('NONCE_SALT',       'oKQ%Ga7X[87uOr:mkih!2-2mJJ@h=>x^j<H$APPZIv`o@,d?*wEqK[8y?:kp1}-P');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'arcp_';

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
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
