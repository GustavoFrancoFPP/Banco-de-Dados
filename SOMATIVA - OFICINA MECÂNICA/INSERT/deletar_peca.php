<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_peca = $_GET['id'];

$sql = "DELETE FROM pecas WHERE id_peca = $id_peca";

if ($conn->query($sql) === TRUE) {
    echo "Peça deletada com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>