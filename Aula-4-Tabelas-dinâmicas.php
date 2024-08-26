<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tabelas dinamicas</title>
    <style>
        table {
            border-collapse: collapse;
        }
        td {
            border-collapse: collapse;
            border: 4px solid cyan;
            text-align: center;
            width: 20px;
        }
        img {
            width: 200px;
        }
    </style>
</head>
<body>
<?php
echo "<h1>Tabela Alternada</h1>";
echo "<table>";

for ($i = 1;  $i <= 10; $i++){

    if ($i % 2 == 0) {
        echo "<tr style='background-color: green'><td>$i</td></tr>";
    }

    else {
        echo "<tr><td>$i</td></tr>";
    } 
}

echo "</table>";

echo "<h1>Tabela com Imagens</h1>";
echo "<table><tr>";
for ($x = 1;  $x <= 5; $x++) {
    echo "<td><img src='https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNs7zvZzkiFN0fpeI1dZ-OXsMaNFPfrBxAWA&s/tabela-imgs/$x.jpg'></td>";

}
echo "</tr>";
echo "<tr>";
for ($x = 6; $x <= 10; $x++) {
    echo "<td><img src='https://static.wikia.nocookie.net/assassinscreed/images/e/e7/Abstergo-Logo-Schwarz.png/revision/latest/thumbnail/width/360/height/360?cb=20130219193130&path-prefix=de/tabela-imgs/$x.jpg'></td>";
}
echo "</tr>";
?>
</body>
</html>
