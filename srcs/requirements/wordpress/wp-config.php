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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', db_name_replaced);

/** MySQL database username */
define( 'DB_USER', db_user_replaced);

/** MySQL database password */
define( 'DB_PASSWORD', db_password_replaced);

/** MySQL hostname */
define( 'DB_HOST', db_host_replaced );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

define( 'WP_ALLOW_REPAIR', true );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'Ybt=~TU],]fXQJ1NXS|+E9b!}MfKH,@=`B:OAD0v<h!N+E.*x#fpu:4,L$|xetxh');
define('SECURE_AUTH_KEY',  '7)$`+QI5^kBp9k_* ;|%OoW+reW|:_xeWpdkB*6M[f.u87&kbPv]aInoPRoK^t;]');
define('LOGGED_IN_KEY',    'N3Mf_e_d;x5CAR&(XTAU|L5cDS.]W?XN++dWn~:kC7B8[S-T=lO|-5HJLq:slUd&');
define('NONCE_KEY',        '+.yM-/xCFQe+}@!*nh(,c~.U<{%j%_n_6]&W+kbs_4``A@/fLp$ I$u?J9b%^+Ko');
define('AUTH_SALT',        '$Z+uDUwV.ZL+`/CpF_.nKSf;7,-g*6H>+:-x|k]>euS-8K*U7Y`%mVZo|w-!B=dW');
define('SECURE_AUTH_SALT', '_ZZztVNL|hG5v-nn/+j0.WIeCb)L-|J|94t)5@yoC4{|lRru098 ?M=<NjG2ZPj6');
define('LOGGED_IN_SALT',   ',|6?6b|IVf*q:6`=jqn+4W}._m@0FFJOyh+ZN&a8J*YpiR|{Y|R.6~t|=Pe{|@mh');
define('NONCE_SALT',       'CT*$vOFc+{Pp_N*R&{&]wH|Ul^m_&xrk0xfA]F,N}jPRV9mG?vMjE,/o=`(zwx9%');

/**#@-*/

/**
 * WordPress Database Table prefix.
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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', true );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
?>
