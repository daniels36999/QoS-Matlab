<?php 

function conectarDB() : mysqli {
    $nombre_servidor = "localhost"; // Cambia si usas un servidor remoto
    $usuario = "root";              // Usuario de tu base de datos
    $contrasena = "@Daniels14";               // Contraseña de tu base de datos
    $nombre_bd = "db_daniels";            // Nombre de la base de datos
    
    $db = mysqli_connect($nombre_servidor, $usuario, $contrasena, $nombre_bd);

    if(!$db) {
        echo "Error: no se pudo conectar";
        exit;
    } 

    return $db;
    
}