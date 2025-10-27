<?php
$conn = new mysqli("localhost", "root", "senaisp", "somativa");

$id = $_POST['id_usuario'];
$nome = $_POST['nome'];
$email = $_POST['email'];

$sql = "UPDATE usuarios SET nome='$nome', email='$email' WHERE id_usuario = $id";

if ($conn->query($sql) === TRUE) {
    echo "Dados atualizado com sucesso!";
    echo "<br><a href='index.html'>Voltar</a>";
} else {
    echo "Erro: " . $conn->error;
}

$conn->close();
?>