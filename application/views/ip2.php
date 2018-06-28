<?php
 //include("../datos/conexion.php"); 
 include("../views/conexion.php");
//$archivo = "../vista/ip.txt";
$archivo = "../views/ip.txt";
$proceso = fopen($archivo, "a") or die ("Error en el sistema");
$ip=$_SERVER["REMOTE_ADDR"];
$fecha=date("y-m-d  h:i:s");
$url=$_SERVER["REQUEST_URI"];

if(!isset($_SESSION["loginphp"])){
$usuario= $_SESSION['nombre'] = "invitado";		
}else{
	
	$usuario=$_SESSION["loginphp"]["nombre"];	
}


$server=$_SERVER["HTTP_HOST"];
$datos="La ip es: ".$ip ." La url es: " .$url ." El servidor es: ".  $server ." El usuario es: ". $usuario. " Fue capturada el: ".$fecha."\n";
fwrite($proceso, $datos);
fclose($proceso);


if ($conexion->connect_error) {
    die("La conexión ha fallado: " . $conexion->connect_error);
} 

$ip=$_SERVER["REMOTE_ADDR"];
$url=$_SERVER["REQUEST_URI"];
$server=$_SERVER["HTTP_HOST"];
//$usuario=$_SESSION["loginphp"]["nombre"];	
if(!isset($_SESSION["loginphp"])){
$usuario= $_SESSION['nombre'] = "invitado";		
}else{
	$usuario=$_SESSION["loginphp"]["nombre"];	
}

$fecha=date("y-m-d  h:i:s");

$sql = "INSERT INTO bitacora VALUES('', '$ip', '$url', '$server', '$usuario', '$fecha')";
//$sql = "INSERT INTO bitacora (ip, url, server, usuario, fecha)  VALUES (:ip, :url, :server, :usuario, :fecha)";
if ($conexion->query($sql) === TRUE) {
} else {
    echo "Error: " . $sql . "<br>" . $conexion->error;
}

$conexion->close();
?>