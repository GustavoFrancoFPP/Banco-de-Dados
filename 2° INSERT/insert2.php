<?php
$nome = $_POST['nome'];
$email = $_POST['email'];
$senha = $_POST['senha'];
$endereco = $_POST['endereco'];
$estado = $_POST['estado'];

$conn = new mysqli("localhost", "root", "senaisp", "somativa");

if ($conn->connect_error) {
    die("Erro de conexão:" . $conn->connect_error);
}

$sql = "INSERT INTO cadastro (nome, email, senha, endereco, estado) VALUES ('$nome', '$email', '$senha', '$endereco', '$estado')";
if ($conn->query($sql) === TRUE) {
    echo "Dados salvos com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}
// header("Location: index2.html");
exit;
$conn->close();
?>
