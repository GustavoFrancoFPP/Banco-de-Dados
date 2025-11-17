<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_veiculo = $_GET['id'];
$result = $conn->query("SELECT * FROM veiculos WHERE id_veiculo = $id_veiculo");
$row = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Veículo</title>
</head>
<body>
    <h1>Editar Veículo</h1>
    <form action="atualizar_veiculo.php" method="POST">
        <input type="hidden" name="id_veiculo" value="<?php echo $row['id_veiculo']; ?>">
        
        Modelo: <input type="text" name="modelo" value="<?php echo $row['modelo']; ?>" required><br>
        Marca: <input type="text" name="marca" value="<?php echo $row['marca']; ?>" required><br>
        Descrição: <input type="text" name="descricao" value="<?php echo $row['descricao']; ?>" required><br>
        Ano de Fabricação: <input type="number" name="ano_fabricacao" value="<?php echo $row['ano_fabricacao']; ?>" required><br>
        Placa: <input type="text" name="placa" value="<?php echo $row['placa']; ?>" required><br>
        
        <button type="submit">Atualizar Veículo</button>
    </form>
    <a href="listar_tudo.php">Voltar</a>
</body>
</html>
<?php
$conn->close();
?>