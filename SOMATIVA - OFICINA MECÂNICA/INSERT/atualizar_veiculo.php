<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_veiculo = $_POST['id_veiculo'];
$modelo = $_POST['modelo'];
$marca = $_POST['marca'];
$descricao = $_POST['descricao'];
$ano_fabricacao = $_POST['ano_fabricacao'];
$placa = $_POST['placa'];

$sql = "UPDATE veiculos SET modelo='$modelo', marca='$marca', descricao='$descricao', ano_fabricacao=$ano_fabricacao, placa='$placa' WHERE id_veiculo=$id_veiculo";

if ($conn->query($sql) === TRUE) {
    echo "Veículo atualizado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>