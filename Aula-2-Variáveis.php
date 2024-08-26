<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Aula 2 Variaveis</title>
</head>
<body>
    <?php
        echo "<h1>Variaveis usando $</h1>";
   
        $nome = "José Marcus";
        $idade = "18";
        $altura = "1,65";
        echo "<p>$nome tem $idade e $altura m</p>";
        
        $a = 26;
        $b = 13;
        $c = $a + $b;
        echo "<p>A soma de $a e $b é $c m<br>";
        
        $c = $a - $b;
        echo "<p>A subtração de $a e $b é $c m<br>";

        $c - $a * $b;
        echo "A multiplicação de $a e $b é $c<br>";

        $c = $a / $b;
        echo "A divisão de $a e $b é $c<br>";

        $c = $a % $b;
        echo "O resto da divisão entre $a e $b é $c";

        $c = $a ** $b;
        echo "$a elevado a $b é $c";

    ?>
</body>
</html>
