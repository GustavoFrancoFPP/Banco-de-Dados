<?php
$conn = new mysqli("localhost", "root", "senaisp", "formativa");

$id = $_GET['id_editora'];
$result = $conn->query("SELECT * FROM editores WHERE id_editora = $id");
$row = $result->fetch_assoc();
?>

<form action="atualizar2.php" method="POST">
    <input type="hidden" name="id_editora" value="<?php echo $row['id_editora']; ?>">
    Nome da Editora: <input type="text" name="nome_editora" value="<?php echo $row['nome_editora']; ?>"><br>
    Endereço: <input type="text" name="endereco" value="<?php echo $row['endereco']; ?>"><br>
    CNPJ: <input type="text" name="cnpj" value="<?php echo $row['cnpj']; ?>"><br>
    Telefone: <input type="text" name="telefone" value="<?php echo $row['telefone']; ?>"><br>
    Cidade: <input type="text" name="cidade" value="<?php echo $row['cidade']; ?>"><br>
    Contato: <input type="text" name="contato" value="<?php echo $row['contato']; ?>"><br>
    <input type="submit" value="Atualizar">
</form>

<link rel="stylesheet" href="style2.css">