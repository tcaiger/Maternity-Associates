<?php

global $project;
$project = 'mysite';

global $databaseConfig;
$databaseConfig = array(
	'type' => 'MySQLDatabase',
	'server' => 'localhost',
	'username' => 'tomcaige_admin',
	'password' => 'admin1234',
	'database' => 'tomcaige_SS_maternity',
	'path' => ''
);

Security::setDefaultAdmin('admin', 'admin1234');

// Set the site locale
i18n::set_locale('en_US');
