<?php
$conn = new mysqli("localhost", "root", "senaisp", "mecanica");

if ($conn->connect_error) {
    die("Erro na conexão: " . $conn->connect_error);
}

echo "<!DOCTYPE html>
<html>
<head>
    <title>Lista Completa - Mecânica</title>
    <link rel='stylesheet' href='style.css'>
</head>
<body>
    <div class='container'>
        <h1>Lista Completa - Sistema Mecânica</h1>";

echo "<div class='list-section'>
        <h2>Clientes</h2>";
$result = $conn->query("SELECT * FROM clientes");
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='list-item'>
                <div class='item-info'>
                    <span class='id-badge'>ID: {$row['id_cliente']}</span>
                    <strong>{$row['nome_cliente']}</strong> - {$row['email']} - {$row['telefone']}
                </div>
                <div class='action-links'>
                    <a href='editar_cliente.php?id={$row['id_cliente']}' class='btn btn-edit'>Editar</a>
                    <a href='deletar_cliente.php?id={$row['id_cliente']}' class='btn btn-delete' onclick='return confirm(\"Deseja deletar este cliente?\")'>Deletar</a>
                </div>
              </div>";
    }
} else {
    echo "<div class='no-data'>Nenhum cliente cadastrado.</div>";
}
echo "</div>";

echo "<div class='list-section'>
        <h2>Mecânicos</h2>";
$result = $conn->query("SELECT * FROM mecanicos");
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='list-item'>
                <div class='item-info'>
                    <span class='id-badge'>ID: {$row['id_mecanico']}</span>
                    <strong>{$row['nome_mecanico']}</strong> - {$row['especialidade']} - {$row['status']} - R$ " . number_format($row['salario'], 2, ',', '.') . "
                </div>
                <div class='action-links'>
                    <a href='editar_mecanico.php?id={$row['id_mecanico']}' class='btn btn-edit'>Editar</a>
                    <a href='deletar_mecanico.php?id={$row['id_mecanico']}' class='btn btn-delete' onclick='return confirm(\"Deseja deletar este mecânico?\")'>Deletar</a>
                </div>
              </div>";
    }
} else {
    echo "<div class='no-data'>Nenhum mecânico cadastrado.</div>";
}
echo "</div>";

echo "<div class='list-section'>
        <h2>Peças</h2>";
$result = $conn->query("SELECT * FROM pecas");
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='list-item'>
                <div class='item-info'>
                    <span class='id-badge'>ID: {$row['id_peca']}</span>
                    <strong>{$row['nome_peca']}</strong> - R$ " . number_format($row['preco_peca'], 2, ',', '.') . " - Estoque: {$row['quantidade_estoque']}
                </div>
                <div class='action-links'>
                    <a href='editar_peca.php?id={$row['id_peca']}' class='btn btn-edit'>Editar</a>
                    <a href='deletar_peca.php?id={$row['id_peca']}' class='btn btn-delete' onclick='return confirm(\"Deseja deletar esta peça?\")'>Deletar</a>
                </div>
              </div>";
    }
} else {
    echo "<div class='no-data'>Nenhuma peça cadastrada.</div>";
}
echo "</div>";

echo "<div class='list-section'>
        <h2>Serviços</h2>";
$result = $conn->query("SELECT * FROM servicos");
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='list-item'>
                <div class='item-info'>
                    <span class='id-badge'>ID: {$row['id_servico']}</span>
                    <strong>{$row['tipo_servico']}</strong> - R$ " . number_format($row['preco'], 2, ',', '.') . " - {$row['tempo_estimado']} horas - Início: " . date('d/m/Y', strtotime($row['dia_inicio'])) . "
                </div>
                <div class='action-links'>
                    <a href='editar_servico.php?id={$row['id_servico']}' class='btn btn-edit'>Editar</a>
                    <a href='deletar_servico.php?id={$row['id_servico']}' class='btn btn-delete' onclick='return confirm(\"Deseja deletar este serviço?\")'>Deletar</a>
                </div>
              </div>";
    }
} else {
    echo "<div class='no-data'>Nenhum serviço cadastrado.</div>";
}
echo "</div>";

echo "<div class='list-section'>
        <h2>Veículos</h2>";
$result = $conn->query("SELECT * FROM veiculos");
if ($result && $result->num_rows > 0) {
    while ($row = $result->fetch_assoc()) {
        echo "<div class='list-item'>
                <div class='item-info'>
                    <span class='id-badge'>ID: {$row['id_veiculo']}</span>
                    <strong>{$row['marca']} {$row['modelo']}</strong> - {$row['placa']} - {$row['ano_fabricacao']}
                </div>
                <div class='action-links'>
                    <a href='editar_veiculo.php?id={$row['id_veiculo']}' class='btn btn-edit'>Editar</a>
                    <a href='deletar_veiculo.php?id={$row['id_veiculo']}' class='btn btn-delete' onclick='return confirm(\"Deseja deletar este veículo?\")'>Deletar</a>
                </div>
              </div>";
    }
} else {
    echo "<div class='no-data'>Nenhum veículo cadastrado.</div>";
}
echo "</div>";

$conn->close();
echo "<a href='index.html' class='back-link'>Voltar para o Menu Principal</a>
    </div>
</body>
</html>";
?>