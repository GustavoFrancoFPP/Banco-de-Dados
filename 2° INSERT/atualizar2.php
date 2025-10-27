<?php

$conn = new mysqli("localhost", "root", "senaisp", "formativa");
$id = $_POST['id_editora'];
$nome = $_POST['nome_editora'];
$endereco = $_POST['endereco'];
$cnpj = $_POST['cnpj'];
$telefone = $_POST['telefone'];
$cidade = $_POST['cidade'];
$contato = $_POST['contato'];
$sql = "UPDATE editores SET nome_editora='$nome', endereco='$endereco' WHERE id_editora = $id";
if ($conn->query($sql) === TRUE) {
    echo "Dados atualizado com sucesso!";
    echo "<br><a href='index.html'>Voltar</a>";
} else {
    echo "Erro: " . $conn->error;
}
$conn-> close();
?>
