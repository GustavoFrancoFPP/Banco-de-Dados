<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_servico = $_GET['id'];

$sql = "DELETE FROM servicos WHERE id_servico = $id_servico";

if ($conn->query($sql) === TRUE) {
    echo "Serviço deletado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>