<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_peca = $_GET['id'];
$result = $conn->query("SELECT * FROM pecas WHERE id_peca = $id_peca");
$row = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Peça</title>
</head>
<body>
    <h1>Editar Peça</h1>
    <form action="atualizar_peca.php" method="POST">
        <input type="hidden" name="id_peca" value="<?php echo $row['id_peca']; ?>">
        
        Nome: <input type="text" name="nome_peca" value="<?php echo $row['nome_peca']; ?>" required><br>
        Descrição: <input type="text" name="descricao" value="<?php echo $row['descricao']; ?>" required><br>
        Tipo de Material: <input type="text" name="material" value="<?php echo $row['material']; ?>" required><br>
        Tipo de Peça: <input type="text" name="tipo_peca" value="<?php echo $row['tipo_peca']; ?>" required><br>
        Quantidade no Estoque: <input type="number" name="quantidade_estoque" value="<?php echo $row['quantidade_estoque']; ?>" required><br>
        Preço: <input type="number" step="0.01" name="preco_peca" value="<?php echo $row['preco_peca']; ?>" required><br>
        
        <button type="submit">Atualizar Peça</button>
    </form>
    <a href="listar_tudo.php">Voltar</a>
</body>
</html>
<?php
$conn->close();
?>