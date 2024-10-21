<?php

include "locadora.php";

if (!$conn){
    die("falha na conexão :". mysqli_connect_error());

}

$Ano = "$_POST[Ano]";
$Diretor = "$_POST[Diretor]";
$Genero = "$_POST[Genero]";
$Titulo = "$_POST[Titulo]";


$sql = "INSERT INTO `filmes`
( `Ano`, `Diretor`, `Genero`, `Titulo`) 
VALUES
('$Ano', '$Diretor', '$Genero', '$Titulo')";

$query = mysqli_query(mysql: $conn,query: $sql) or  

die(mysqli_error(mysql: $conn));

if($query){
    echo "<center>";
    echo "Cadastro realizado com sucesso!!<br>";
    echo "<a href='cadastrarF.html'><button title='Home page'>Voltar</button></a>";
    echo "</center>";

} 
else{
    echo "<center>";
    echo "Erro ao cadastrar!!<br>";
    echo "<a href='cadastrarF.html'><button title='Home page'>Voltar</button></a>";
    echo  "</center>";
}
?>
