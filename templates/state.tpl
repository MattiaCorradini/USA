<!DOCTYPE html>
<html lang="en" data-theme="corporate">
<head>
    <meta charset="UTF-8">
    <title><?= $state['name'] ?></title>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.3/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
</head>
<body>
<h1>State of <?= $state['name'] ?></h1>
<img src="state_flags/<?=$state['name']?>.png" alt="" style="width: 400px; height: auto;">
<img src="state_map/<?=$state['name']?>.png" alt="" style="width: 400px; height: auto;">
<p>Founded in: <?= $state['ist'] ?></p>
<p>Capital: <?= $state['cap'] ?></p>
<p>History: <?= $state['sto'] ?></p><br>
<div id="chart"></div>
<a href="index.php?map">MAP</a>
<script src="./scripts/state.js"></script>
</body>
</html>