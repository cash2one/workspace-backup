<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------
| DATABASE CONNECTIVITY SETTINGS
| -------------------------------------------------------------------
| This file will contain the settings needed to access your database.
|
| For complete instructions please consult the 'Database Connection'
| page of the User Guide.
|
| -------------------------------------------------------------------
| EXPLANATION OF VARIABLES
| -------------------------------------------------------------------
|
|	['dsn']      The full DSN string describe a connection to the database.
|	['hostname'] The hostname of your database server.
|	['username'] The username used to connect to the database
|	['password'] The password used to connect to the database
|	['database'] The name of the database you want to connect to
|	['dbdriver'] The database driver. e.g.: mysqli.
|			Currently supported:
|				 cubrid, ibase, mssql, mysql, mysqli, oci8,
|				 odbc, pdo, postgre, sqlite, sqlite3, sqlsrv
|	['dbprefix'] You can add an optional prefix, which will be added
|				 to the table name when using the  Query Builder class
|	['pconnect'] TRUE/FALSE - Whether to use a persistent connection
|	['db_debug'] TRUE/FALSE - Whether database errors should be displayed.
|	['cache_on'] TRUE/FALSE - Enables/disables query caching
|	['cachedir'] The path to the folder where cache files should be stored
|	['char_set'] The character set used in communicating with the database
|	['dbcollat'] The character collation used in communicating with the database
|				 NOTE: For MySQL and MySQLi databases, this setting is only used
| 				 as a backup if your server is running PHP < 5.2.3 or MySQL < 5.0.7
|				 (and in table creation queries made with DB Forge).
| 				 There is an incompatibility in PHP with mysql_real_escape_string() which
| 				 can make your site vulnerable to SQL injection if you are using a
| 				 multi-byte character set and are running versions lower than these.
| 				 Sites using Latin-1 or UTF-8 database character set and collation are unaffected.
|	['swap_pre'] A default table prefix that should be swapped with the dbprefix
|	['encrypt']  Whether or not to use an encrypted connection.
|
|			'mysql' (deprecated), 'sqlsrv' and 'pdo/sqlsrv' drivers accept TRUE/FALSE
|			'mysqli' and 'pdo/mysql' drivers accept an array with the following options:
|
|				'ssl_key'    - Path to the private key file
|				'ssl_cert'   - Path to the public key certificate file
|				'ssl_ca'     - Path to the certificate authority file
|				'ssl_capath' - Path to a directory containing trusted CA certificats in PEM format
|				'ssl_cipher' - List of *allowed* ciphers to be used for the encryption, separated by colons (':')
|				'ssl_verify' - TRUE/FALSE; Whether verify the server certificate or not ('mysqli' only)
|
|	['compress'] Whether or not to use client compression (MySQL only)
|	['stricton'] TRUE/FALSE - forces 'Strict Mode' connections
|							- good for ensuring strict SQL while developing
|	['ssl_options']	Used to set various SSL options that can be used when making SSL connections.
|	['failover'] array - A array with 0 or more data for connections if the main should fail.
|	['save_queries'] TRUE/FALSE - Whether to "save" all executed queries.
| 				NOTE: Disabling this will also effectively disable both
| 				$this->db->last_query() and profiling of DB queries.
| 				When you run a query, with this setting set to TRUE (default),
| 				CodeIgniter will store the SQL statement for debugging purposes.
| 				However, this may cause high memory usage, especially if you run
| 				a lot of SQL queries ... disable this to avoid that problem.
|
| The $active_group variable lets you choose which connection group to
| make active.  By default there is only one group (the 'default' group).
|
| The $query_builder variables lets you determine whether or not to load
| the query builder class.
*/
$active_group = 'kungfu';
$query_builder = TRUE;

$users = array('kungfu', 'sports', 'board', 'quiz', 'user');
/*
$db['kungfu']['hostname'] = '192.168.90.22';
$db['kungfu']['username'] = 'kungfu_rw';
$db['kungfu']['password'] = '1xsBan]mr9baA';
$db['kungfu']['database'] = 'kungfu';
$db['kungfu']['dsn'] = 'mysql:host=192.168.90.22;dbname=kungfu';
*/
$db['kungfu']['hostname'] = '110.172.215.17';
$db['kungfu']['username'] = 'kungfu_rw';
$db['kungfu']['password'] = 'TauZ6qx4+bnaxxy';
$db['kungfu']['database'] = 'kungfu';
$db['kungfu']['dsn'] = 'mysql:host=110.172.215.17;dbname=kungfu';

$db['sports']['hostname'] = '110.172.215.17';
$db['sports']['username'] = 'sports_rw';
$db['sports']['password'] = 'kZoqdohhSwo92uP';
$db['sports']['database'] = 'sports';
$db['sports']['dsn'] = 'mysql:host=110.172.215.17;dbname=sports';

$db['board']['hostname'] = '110.172.215.17';
$db['board']['username'] = 'board_rw';
$db['board']['password'] = 'bgk6sGlqYp&o0uw';
$db['board']['database'] = 'board';
$db['board']['dsn'] = 'mysql:host=110.172.215.17;dbname=board';

$db['quiz']['hostname'] = '110.172.215.17';
$db['quiz']['username'] = 'quiz_rw';
$db['quiz']['password'] = 'nE4THXvua5#1';
$db['quiz']['database'] = 'quiz';
$db['quiz']['dsn'] = 'mysql:host=110.172.215.17;dbname=quiz';

$db['user']['hostname'] = '110.172.215.17';
$db['user']['username'] = 'user_rw';
$db['user']['password'] = 'rMQtsD5wQ4#1';
$db['user']['database'] = 'user';
$db['user']['dsn'] = 'mysql:host=110.172.215.17;dbname=user';


foreach ($users as $user) {
    $db[$user] = array_merge($db[$user], array(
        'dbdriver' => 'pdo',
        'dbprefix' => '',
        'pconnect' => FALSE,
        'db_debug' => (ENVIRONMENT !== 'production'),
        'cache_on' => FALSE,
        'cachedir' => '',
        'char_set' => 'utf8',
        'dbcollat' => 'utf8_general_ci',
        'swap_pre' => '',
        'encrypt' => FALSE,
        'compress' => FALSE,
        'stricton' => FALSE,
        'failover' => array(),
        'save_queries' => TRUE
    ));
}