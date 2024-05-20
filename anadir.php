<?php
require_once("config.php");

// URL del script XQuery
$url = 'http://localhost:8080/exist/rest/db/proyectozoo/anadir.xq';

// Recoger los datos del formulario
$id = $_POST['id'];
$nombre = $_POST['nombre'];
$especie = $_POST['especie'];
$descripcion = $_POST['descripcion'];

// Codificar las credenciales para la autenticación
$auth = base64_encode(USERNAME . ":" . PASSWORD);

// Construir el contenido XML a enviar
$data = "<animal id='$id' nombre='$nombre' especie='$especie'><descripcion>$descripcion</descripcion></animal>";

// Configurar las opciones para la solicitud HTTP
$options = [
    'http' => [
        'header' => ['Authorization: Basic ' . $auth, 'Content-type: application/xml\r\n'],
        'method' => 'POST',
        'content' => $data,
    ],
];

// Crear el contexto de la solicitud HTTP
$context = stream_context_create($options);

// Realizar la solicitud al script XQuery para insertar el animal
$result = file_get_contents($url, false, $context);

// Verificar si la solicitud fue exitosa
if ($result === false) {
    // Mostrar un mensaje de error si la solicitud falla
    echo "Error al insertar el animal";
} else {
    // Si la solicitud fue exitosa, redirigir a la página principal
    header("Location: index.php");
    exit();
}
?>