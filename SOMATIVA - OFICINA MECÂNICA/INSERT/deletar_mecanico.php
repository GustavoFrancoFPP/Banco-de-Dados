<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_mecanico = $_GET['id'];

$sql = "DELETE FROM mecanicos WHERE id_mecanico = $id_mecanico";

if ($conn->query($sql) === TRUE) {
    echo "Mecânico deletado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>