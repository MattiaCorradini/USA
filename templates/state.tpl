<!DOCTYPE html>
<html lang="en" data-theme="sunset">
<head>
    <meta charset="UTF-8">
    <title><?= $state['name'] ?></title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.3/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
</head>
<body>
<h1>State of <?= $state['name'] ?></h1>
<img src="state_flags/<?=$state['name']?>.png" alt="" style="width: 400px; height: auto;">
<img src="state_map/<?=$state['name']?>.png" alt="" style="width: 400px; height: auto;">
<p>Founded in: <?= $state['ist'] ?></p>
<p>Capital: <?= $state['cap'] ?></p>
<p>History: <?= $state['sto'] ?></p><br>
<?php foreach($state['winnerParties'] as $party): ?>
    <p><?= $party['year'] ?>: <?= $party['party_detailed'] ?></p>
<?php endforeach; ?>
<a href="index.php?map">MAP</a>
</body>
</html>