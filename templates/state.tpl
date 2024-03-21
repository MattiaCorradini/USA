<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><?= $state['name'] ?></title>
</head>
<body>
<img src="state_flags/<?=$state['name']?>.png" alt="" style="width: 400px; height: auto;">
<img src="state_map/<?=$state['name']?>.png" alt="" style="width: 400px; height: auto;"><br>
<p>Founded in: <?= $state['ist'] ?></p><br>
<p>Capital: <?= $state['cap'] ?></p><br>
<p>History: <?= $state['sto'] ?></p><br>
<a href="index.php?stay=true">MAP</a>
</body>
</html>