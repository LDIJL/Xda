<?php
// Establecer la conexión con la base de datos
$servername = "localhost"; // Cambia esto si tu servidor de base de datos es diferente
$username = "root"; // Cambia esto si tienes un nombre de usuario diferente
$password = ""; // Cambia esto si tienes una contraseña diferente
$dbname = "proyecto1"; // Cambia esto por el nombre de tu base de datos

// Crear la conexión
$conn = new mysqli("localhost", "root", "","proyecto1" );

// Verificar la conexión
if ($conn->connect_error) {
    die("Error en la conexión a la base de datos: " . $conn->connect_error);
}

// Resto del código para guardar los datos en la base de datos...
?>