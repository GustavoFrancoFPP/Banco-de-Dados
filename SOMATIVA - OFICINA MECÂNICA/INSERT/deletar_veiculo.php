<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_veiculo = $_GET['id'];

$sql = "DELETE FROM veiculos WHERE id_veiculo = $id_veiculo";

if ($conn->query($sql) === TRUE) {
    echo "Veículo deletado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>