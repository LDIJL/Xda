<<?php
// Establecer la conexión con la base de datos
$servername = "localhost"; // Cambia esto si tu servidor de base de datos es diferente
$username = "root"; // Cambia esto si tienes un nombre de usuario diferente
$password = ""; // Cambia esto si tienes una contraseña diferente
$dbname = "proyecto1"; // Cambia esto por el nombre de tu base de datos

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error en la conexión a la base de datos: " . $conn->connect_error);
}

// Obtener los datos enviados por el formulario
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $name = $_POST["name"];
    $email = $_POST["email"];
    $subject = $_POST["subject"];
    $message = $_POST["message"];
    $checkbox1 = isset($_POST["checkbox1"]) ? $_POST["checkbox1"] : "";
    $checkbox2 = isset($_POST["checkbox2"]) ? $_POST["checkbox2"] : "";
    $checkbox3 = isset($_POST["checkbox3"]) ? $_POST["checkbox3"] : "";
    $radio = isset($_POST["radio"]) ? $_POST["radio"] : "";

    // Escapar los datos para prevenir ataques de inyección SQL
    $name = $conn->real_escape_string($name);
    $email = $conn->real_escape_string($email);
    $subject = $conn->real_escape_string($subject);
    $message = $conn->real_escape_string($message);
    $checkbox1 = $conn->real_escape_string($checkbox1);
    $checkbox2 = $conn->real_escape_string($checkbox2);
    $checkbox3 = $conn->real_escape_string($checkbox3);
    $radio = $conn->real_escape_string($radio);

    // Preparar la consulta SQL para insertar los datos en la tabla de la base de datos
    $sql = "INSERT INTO formulario (name, email, subject, message, checkbox1, checkbox2, checkbox3, radio)
            VALUES ('$name', '$email', '$subject', '$message', '$checkbox1', '$checkbox2', '$checkbox3', '$radio')";

    // Ejecutar la consulta y verificar si fue exitosa
    if ($conn->query($sql) === TRUE) {
        echo "Datos guardados exitosamente";
    } else {
        echo "Error al guardar los datos: " . $conn->error;
    }
} else {
    echo "Acceso denegado";
}

// Cerrar la conexión
$conn->close();
?>