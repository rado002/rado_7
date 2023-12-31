<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'rado_7' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '<1rVzlgEm/^xS#Q+]&lJ_I+R,|Jm,fE`r=xK>*bsR,zB5.DzCNjKyx[ds^s*M0:o' );
define( 'SECURE_AUTH_KEY',  '&BYUN]+IBtjv(Q/w1x<,%?]Lv8]k~1YlnLrhwAb}9?4qUjX@x5il6=,2gA.#dh{ ' );
define( 'LOGGED_IN_KEY',    'TgGYYE=An,J)Pt]dZ&nA&u[>CT*w]ZC!OPIJc![{RL{%@r94<7(#CZlpohUnh6:3' );
define( 'NONCE_KEY',        'u81hmjZ4RyixO~Y]EEu)xHr@K0Gj?t@d+T9]]rjxlNC0?t.0ks|zXyJ~ !@5{%ka' );
define( 'AUTH_SALT',        '-=vsB;`^0xP~L85&@AZX@x04g3$GZWyd/_mNyrP-f77Cdr8DkE&S:2x&NtGKB(C!' );
define( 'SECURE_AUTH_SALT', 'xViy2B#UDLD)2~PNTd#uol]2yuSAS:DEo/Wt*f>sD@*]=Y%2Be03a{J$~,;8v+fu' );
define( 'LOGGED_IN_SALT',   'Wlcn)|?q^JageFpj(UPxl~x/k,$KxPJz|gF<O=^QHq0[!b=j#`Cj#e(Gp]xFOhfG' );
define( 'NONCE_SALT',       '@kS%8[ c$*Bi n]NT86=}eB8fPB`&9EHJzTI9B5+ p?C`e2ylNZZil!,AE3$w{Xh' );

define('WP_HOME', 'http://localhost/rado_7');
define('WP_SITEURL', 'http://localhost/rado_7');


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */

define( 'WP_DISABLE_FATAL_ERROR_HANDLER', true ); // 5.2 and later
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
