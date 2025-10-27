<?php
$conn = new mysqli("localhost", "root", "senaisp", "formativa");
$nome = $_POST['nome_editora'];
$endereco = $_POST['endereco'];
$cnpj = $_POST['cnpj'];
$telefone = $_POST['telefone'];
$cidade = $_POST['cidade'];
$contato = $_POST['contato'];

if ($conn->connect_error) {
    die("Erro de conexão:" . $conn->connect_error);
}

$sql = "INSERT INTO editores (nome_editora, endereco, cnpj, telefone, cidade, contato) 
        VALUES ('$nome', '$endereco', '$cnpj', '$telefone', '$cidade', '$contato')";
if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}
// header("Location: index2.html");
exit;
$conn->close();
?>
