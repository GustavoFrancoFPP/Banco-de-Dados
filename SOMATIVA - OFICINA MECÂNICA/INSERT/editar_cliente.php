<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

$id_cliente = $_GET['id'];

$result = $conn->query("SELECT * FROM clientes WHERE id_cliente = $id_cliente");
$row = $result->fetch_assoc();

?>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Cliente</title>
</head>
<body>
    <h1>Editar Cliente</h1>
    <form action="atualizar_cliente.php" method="POST">
        <input type="hidden" name="id_cliente" value="<?php echo $row['id_cliente']; ?>">
        Nome: <input type="text" name="nome_cliente" value="<?php echo $row['nome_cliente']; ?>" required><br>
        CPF: <input type="text" name="cpf" value="<?php echo $row['cpf']; ?>" required><br>
        Data Nasc: <input type="date" name="data_nascimento" value="<?php echo $row['data_nascimento']; ?>" required><br>
        Email: <input type="email" name="email" value="<?php echo $row['email']; ?>" required><br>
        Telefone: <input type="text" name="telefone" value="<?php echo $row['telefone']; ?>" required><br>
        Rua: <input type="text" name="rua" value="<?php echo $row['rua']; ?>" required><br>
        Número: <input type="number" name="numero" value="<?php echo $row['numero']; ?>" required><br>
        Bairro: <input type="text" name="bairro" value="<?php echo $row['bairro']; ?>" required><br>
        Cidade: <input type="text" name="cidade" value="<?php echo $row['cidade']; ?>" required><br>
        CEP: <input type="text" name="cep" value="<?php echo $row['cep']; ?>" required><br>
        Data de Cadastro: <input type="date" name="data_cadastro" value="<?php echo $row['data_cadastro']; ?>" required><br>
        <button type="submit">Atualizar</button>
    </form>
    <a href="listar_tudo.php">Voltar</a>
</body>
</html>
<?php
$conn->close();
?>
