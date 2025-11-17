<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_servico = $_GET['id'];
$result = $conn->query("SELECT * FROM servicos WHERE id_servico = $id_servico");
$row = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Serviço</title>
</head>
<body>
    <h1>Editar Serviço</h1>
    <form action="atualizar_servico.php" method="POST">
        <input type="hidden" name="id_servico" value="<?php echo $row['id_servico']; ?>">
        
        Tipo de Serviço: <input type="text" name="tipo_servico" value="<?php echo $row['tipo_servico']; ?>" required><br>
        Dia de Início: <input type="date" name="dia_inicio" value="<?php echo $row['dia_inicio']; ?>" required><br>
        Preço: <input type="number" step="0.01" name="preco" value="<?php echo $row['preco']; ?>" required><br>
        Tempo Estimado: <input type="number" name="tempo_estimado" value="<?php echo $row['tempo_estimado']; ?>" required><br>
        
        <button type="submit">Atualizar Serviço</button>
    </form>
    <a href="listar_tudo.php">Voltar</a>
</body>
</html>
<?php
$conn->close();
?>