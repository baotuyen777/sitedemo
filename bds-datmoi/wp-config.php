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
//define( 'DB_NAME', 'u262945054_lavie' );
define( 'DB_NAME', 'bds-datmoi' );

/** MySQL database username */
//define( 'DB_USER', 'u262945054_lavie' );
define( 'DB_USER', 'root' );

/** MySQL database password */
//define( 'DB_PASSWORD', 'Batman@123' );
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
//define( 'DB_HOST', '194.59.164.43' );
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );
define( 'WP_HOME', 'http://localhost/sitedemo/bds-datmoi/real' );
define( 'WP_SITEURL', 'http://localhost/sitedemo/bds-datmoi/real' );
/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'JUP49NvJK}uZVA>uk^sitW@UZyiI*aL93h=&g(ukFo=ob`W$elTG%S}f:(,}h&q3' );
define( 'SECURE_AUTH_KEY',  'CLs(F+!xb%9KX2m?A&+9N5Gr@F%Az.v9dGAQ+}*]hYnFDYlW~/x.cZ,JnpHRN]EC' );
define( 'LOGGED_IN_KEY',    'e^g|==sd&71AS6`wej!{ykk1l;h8+D4N ^,2qxYr=W8q0n,e9aaq3}gXhsSbr<n(' );
define( 'NONCE_KEY',        't<u?yW@@9dc[}Tn)ENvx2_0sr=<[9NZZ-.O3_J?[bHHL8u}~f8~GA@t!2:L]*XFM' );
define( 'AUTH_SALT',        ']mm:ub#vynk[g-O=?Q<-FKaO5e-U!+vM=TA(LpFz;fSZh%I8-Jkes-+aAWXEps#`' );
define( 'SECURE_AUTH_SALT', ';^=gXs_#,Zr/kX0P=kpHK/+|Nr7GP:bM&yFR57QS1 h$ +[.HTEwIfRTcT]BDRJh' );
define( 'LOGGED_IN_SALT',   'r)./IB!jTa)5Q+1d.Z)A+2l}h O`Ae)Ixh$vpm13|1h>20oup65c1T2ZM,1KaJ)$' );
define( 'NONCE_SALT',       ':zT}4nIm;V} 1,nFuYpl?K{/fbi*N)ou5{flhkvgSJ/Zj,!IR8|fc$4P .,KN8He' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'gdd_';
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

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
