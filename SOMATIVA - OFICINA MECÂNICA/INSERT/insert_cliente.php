<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$nome_cliente = $_POST['nome_cliente'];
$cpf = $_POST['cpf'];
$data_nascimento = $_POST['data_nascimento'];
$email = $_POST['email'];
$telefone = $_POST['telefone'];
$rua = $_POST['rua'];
$numero = $_POST['numero'];
$bairro = $_POST['bairro'];
$cidade = $_POST['cidade'];
$cep = substr($_POST['cep'], 0, 9);
$data_cadastro = $_POST['data_cadastro'];

$sql = "INSERT INTO clientes (nome_cliente, cpf, data_nascimento, email, telefone, rua, numero, bairro, cidade, cep, data_cadastro) VALUES ('$nome_cliente', '$cpf', '$data_nascimento', '$email', '$telefone', '$rua', '$numero', '$bairro', '$cidade', '$cep', '$data_cadastro')";

if ($conn->query($sql) === TRUE) {
    echo "Cliente salvo!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='cadastrar_cliente.html'>Voltar</a>";
$conn->close();
?>