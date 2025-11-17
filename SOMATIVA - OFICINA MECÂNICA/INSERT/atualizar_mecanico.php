<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_mecanico = $_POST['id_mecanico'];
$nome_mecanico = $_POST['nome_mecanico'];
$cpf = $_POST['cpf'];
$especialidade = $_POST['especialidade'];
$carga_horaria = $_POST['carga_horaria'];
$salario = $_POST['salario'];
$status = $_POST['status'];

$sql = "UPDATE mecanicos SET nome_mecanico='$nome_mecanico', cpf='$cpf', especialidade='$especialidade', carga_horaria=$carga_horaria, salario=$salario, status='$status' WHERE id_mecanico=$id_mecanico";

if ($conn->query($sql) === TRUE) {
    echo "Mecânico atualizado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>