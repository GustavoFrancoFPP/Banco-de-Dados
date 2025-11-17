<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

$id_mecanico = $_GET['id'];
$result = $conn->query("SELECT * FROM mecanicos WHERE id_mecanico = $id_mecanico");
$row = $result->fetch_assoc();
?>
<!DOCTYPE html>
<html>
<head>
    <title>Editar Mecânico</title>
</head>
<body>
    <h1>Editar Mecânico</h1>
    <form action="atualizar_mecanico.php" method="POST">
        <input type="hidden" name="id_mecanico" value="<?php echo $row['id_mecanico']; ?>">
        
        Nome: <input type="text" name="nome_mecanico" value="<?php echo $row['nome_mecanico']; ?>" required><br>
        CPF: <input type="text" name="cpf" value="<?php echo $row['cpf']; ?>" required><br>
        Especialidade: <input type="text" name="especialidade" value="<?php echo $row['especialidade']; ?>" required><br>
        Carga Horária: <input type="number" name="carga_horaria" value="<?php echo $row['carga_horaria']; ?>" required><br>
        Salário: <input type="number" step="0.01" name="salario" value="<?php echo $row['salario']; ?>" required><br>
        Status: 
        <select name="status" required>
            <option value="Ativo" <?php echo $row['status'] == 'Ativo' ? 'selected' : ''; ?>>Ativo</option>
            <option value="Inativo" <?php echo $row['status'] == 'Inativo' ? 'selected' : ''; ?>>Inativo</option>
        </select><br>
        
        <button type="submit">Atualizar Mecânico</button>
    </form>
    <a href="listar_tudo.php">Voltar</a>
</body>
</html>
<?php
$conn->close();
?>