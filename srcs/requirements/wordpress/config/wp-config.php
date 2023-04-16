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
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', '' );

/** Database username */
define( 'DB_USER', '' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', '' );

// /** Database charset to use in creating database tables. */
// define( 'DB_CHARSET', 'utf8' );

// /** The database collate type. Don't change this if in doubt. */
// define( 'DB_COLLATE', '' );

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
define('AUTH_KEY',         'p:BST@$K->D2?  I)Eew)rb2?eUip80pEv-`3gg1;|B!L24o45?1hC0.R^#t&chX');
define('SECURE_AUTH_KEY',  '&*D-2t7s%Q|)KauUI4+1`y_=!G.m]YsoZ--p_*opeZ});FGSn6V0?j[96.)|2HEn');
define('LOGGED_IN_KEY',    '5fBXeb-t<DD0Ru2}i8%=R6:YA{]+w- ctHso3[BX6vRg@+};-jSUp5Z`ONe-(k/V');
define('NONCE_KEY',        'oC;1cq7eEWF&W}+4Oc~$_?0MFD9Ol|*f`v>Lv4|=&29!f0/|49#{yL.-T3R`h#,/');
define('AUTH_SALT',        'XaQZa>hVfX2CJX|JvE_Y.kr>JZy=.czyY|MFo-$Ja74U-bD?+` uJj]q@JF[!eH|');
define('SECURE_AUTH_SALT', ']hvL+w0&1p6H^MuEsHK3[VwQ)X:k%qlKbGe`z%Rzd6[1N6(Pah98fFc!DxBLgfx[');
define('LOGGED_IN_SALT',   '5Maw,Se~(j_2|k44t7*miLja#{y@@wC,^m~|C{o_.;f+C!(f|M3<59g|q2`qIhBk');
define('NONCE_SALT',       'T8@Sz_(A(Jk^n4WnpOP+J>#/4+mK8mO3L7sY)5x6??|FD9E5aV5@r`Zu?vM49[kQ');

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
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';