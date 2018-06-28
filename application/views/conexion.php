<?php


class conexion{

	/**
	*conexión a la base de datos
	*
	*@return PDO
	*/

	public static function conectar(){
		try{

			$cn = new PDO("mysql:host=localhost;dbname=ventas_ci","root","");
			return $cn;


		} catch (PDOException $ex){
			die($ex->getMessage());
		}
	}
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ventas_ci";
// Crear la conexión
$conexion = new mysqli($servername, $username, $password, $dbname);