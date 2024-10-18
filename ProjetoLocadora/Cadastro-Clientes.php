<?php

include "locadora.php";

if (!$conn){
    die("falha na conexão :". mysqli_connect_error());

}

$Nome = "$_POST[Nome]";
$CPF = "$_POST[CPF]";
$Telefone = "$_POST[Telefone]";
$Endereço = "$_POST[Endereço]";


$sql = "INSERT INTO `clientes`
( `Nome`, `CPF`, `Endereço`, `Telefone`) 
VALUES
('$Nome', '$CPF', '$Endereço', '$Telefone')";

$query = mysqli_query(mysql: $conn,query: $sql) or  

die(mysqli_error(mysql: $conn));

if($query){
    echo "<center>";
    echo "Cadastro realizado com sucesso!!<br>";
    echo "<a href='cadastrar.html'><button title='Home page'>Voltar</button></a>";
    echo "</center>";

} 
else{
    echo "<center>";
    echo "Erro ao cadastrar!!<br>";
    echo "<a href='cadastrar.html'><button title='Home page'>Voltar</button></a>";
    echo  "</center>";
}
?>
