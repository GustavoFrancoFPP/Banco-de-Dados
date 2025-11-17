<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_cliente = $_GET['id'];

$sql = "DELETE FROM clientes WHERE id_cliente = $id_cliente";

if ($conn->query($sql) === TRUE) {
    echo "Cliente deletado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>