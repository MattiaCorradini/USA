<!DOCTYPE html>
<html lang="en" data-theme="sunset">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"
          integrity="sha256-p4NxAoJBhIIN+hmNHrzRCf9tD/miZyoHS5obTRR9BMY="
          crossorigin=""/>
    <script src="https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"
            integrity="sha256-20nQCchB9co0qIjJZRGuk2/Z9VM+kNiyxNV1lvTlZBo="
            crossorigin="">
    </script>
    <link href="https://cdn.jsdelivr.net/npm/daisyui@4.7.3/dist/full.min.css" rel="stylesheet" type="text/css" />
    <script src="https://cdn.tailwindcss.com"></script>
    <title>MAP</title>
    <style>
        #map {
            flex: 1;
            max-width: 55%;
            height: 480px;
            margin: 10px;
        }
    </style>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
<div class="cont">
<h1><?= $year ?> Election</h1>
<div id="map">
</div>
    <select class="select select-bordered w-full max-w-xs" id="year">
        <?php
       for ($year = 1976; $year <= 2020; $year+=4): ?>
            <option value="<?=$year;?>"><?=$year;?></option>
        <?php endfor; ?>
    </select>
</div>
<script src="main.js"></script>
</body>
</html>