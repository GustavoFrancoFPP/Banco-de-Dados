<?php

$conn = new mysqli("localhost", "root", "senaisp", "formativa");
$result = $conn->query("SELECT * FROM editores");
echo "<h2>Usuários</h2>";
echo "<table border='1'>";
echo "<tr><th>ID</th><th>Nome</th><th>Endereco</th
><th>Ações</th></tr>";
while ($row = $result->fetch_assoc()) {
    echo "<tr>
     <td>{$row['id_editora']}</td>
     <td>{$row['nome_editora']}</td>
     <td>{$row['endereco']}</td>
     <td><a href='editar2.php?id_editora={$row['id_editora']}'>Editar</a></td>
    </tr>";
}
echo "</table>";
$conn->close();
?>
<a href="index2.html"><button type="button">Página Inicial</button></a>

<link rel="stylesheet" href="style2.css">
