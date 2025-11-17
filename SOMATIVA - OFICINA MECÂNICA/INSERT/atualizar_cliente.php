<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_cliente = $_POST['id_cliente'];
$nome = $_POST['nome_cliente'];
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

$sql = "UPDATE clientes SET nome_cliente='$nome', cpf='$cpf', data_nascimento='$data_nascimento', email='$email', telefone='$telefone', rua='$rua', numero=$numero, bairro='$bairro', cidade='$cidade', cep='$cep', data_cadastro='$data_cadastro' WHERE id_cliente=$id_cliente";

if ($conn->query($sql) === TRUE) {
    echo "Cliente atualizado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>