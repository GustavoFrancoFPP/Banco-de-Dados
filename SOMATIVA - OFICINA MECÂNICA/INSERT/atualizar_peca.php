<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_peca = $_POST['id_peca'];
$nome_peca = $_POST['nome_peca'];
$descricao = $_POST['descricao'];
$material = $_POST['material'];
$tipo_peca = $_POST['tipo_peca'];
$quantidade_estoque = $_POST['quantidade_estoque'];
$preco_peca = $_POST['preco_peca'];

$sql = "UPDATE pecas SET nome_peca='$nome_peca', descricao='$descricao', material='$material', tipo_peca='$tipo_peca', quantidade_estoque=$quantidade_estoque, preco_peca=$preco_peca WHERE id_peca=$id_peca";

if ($conn->query($sql) === TRUE) {
    echo "Peça atualizada com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>