<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

$nome_mecanico = $_POST['nome_mecanico'];
$cpf = $_POST['cpf'];
$especialidade = $_POST['especialidade'];
$carga_horaria = $_POST['carga_horaria'];
$salario = $_POST['salario'];
$status = $_POST['status'];

$sql = "INSERT INTO mecanicos (nome_mecanico, cpf, especialidade, carga_horaria, salario, status) 
        VALUES ('$nome_mecanico', '$cpf', '$especialidade', $carga_horaria, $salario, '$status')";

if ($conn->query($sql) === TRUE) {
    echo "Mecânico salvo!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='cadastrar_mecanico.html'>Voltar</a>";
$conn->close();
?>