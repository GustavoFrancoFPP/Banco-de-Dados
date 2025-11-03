<?php 
$conn = new mysqli("localhost", "root", "senaisp", "formativa");
if ($conn->connect_error) {
    die("Erro de conexão: " . $conn->connect_error);
}

$id = $_GET['id_editora'];

// Preparar a declaração
$stmt = $conn->prepare("DELETE FROM editores where id_editora = ?");
//Vincular o parâmetro 'id' como um inteiro(i)
$stmt->bind_param("i", $id);

// Executar e verificar
if ($stmt->execute()) {
    echo "Usuário deletado com sucesso!";
} else {
    echo "Erro ao deletar: " . $stmt->error;
}
 echo "<br><a href='listar2.php'>Voltar para a lista</a>";

 $stmt->close();
 $conn->close();
 ?>