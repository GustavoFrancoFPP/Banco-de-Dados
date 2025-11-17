<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_servico = $_POST['id_servico'];
$tipo_servico = $_POST['tipo_servico'];
$dia_inicio = $_POST['dia_inicio'];
$preco = $_POST['preco'];
$tempo_estimado = $_POST['tempo_estimado'];

$sql = "UPDATE servicos SET tipo_servico='$tipo_servico', dia_inicio='$dia_inicio', preco=$preco, tempo_estimado=$tempo_estimado WHERE id_servico=$id_servico";

if ($conn->query($sql) === TRUE) {
    echo "Serviço atualizado com sucesso!";
} else {
    echo "Erro: " . $conn->error;
}

echo "<br><a href='listar_tudo.php'>Voltar para a lista</a>";
$conn->close();
?>