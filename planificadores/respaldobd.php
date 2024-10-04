<?php
	//////////////////////////////////////////////////////////////////////////
	// Script de respaldo de B.D. MySQL: bdwejadminmot						//
	// Por: Ing. José Gil, Movil: +584247627193, Email: jgilmer79@gmail.com //
	//////////////////////////////////////////////////////////////////////////
// Ver: https://jcsis.wordpress.com/2013/09/20/copia-seguridad-mysql-a-traves-de-consola/
	$rutamysql='C:\xampp\mysql\bin\mysqldump.exe ';
	$autemysql=' --user=root --password="" -R ';
//	$autemysql=' --user=root -R ';
	$badamysql='bdumsl';
	$rutarespa='C:\xampp\htdocs\umsl_dev\sql';
	$fechrespa=date("Y-m-d");
	$horarespa=date("H-i-s");
	$archrespa='\Respaldo_BD_'.$badamysql.'_'.$fechrespa.'_'.$horarespa.'.sql';
	echo "Por favor espere mientras se realiza el respaldo de la base de datos: ".$badamysql."\n";
	//shell_exec('C:\xampp\mysql\bin\mysqldump.exe --user=root --password="" bdwejadminmot > ..\..\Respaldos\Respaldo_%date:~-4,4%-%date:~-7,2%-%date:~-10,2%_%time:~0,2%-%time:~3,2%-%time:~6,2%.sql');
	shell_exec($rutamysql.$autemysql.$badamysql.' > '.$rutarespa.$archrespa);
	//echo "\nRuta: ".$rutarespa.$archrespa;
	//sleep(10);
?> 