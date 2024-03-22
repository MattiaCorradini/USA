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
        .unselectable {
            -webkit-touch-callout: none;
            -webkit-user-select: none;
            -khtml-user-select: none;
            -moz-user-select: none;
            -ms-user-select: none;
            user-select: none;
        }
    </style>
    <link rel="stylesheet" href="styles/style.css">
</head>
<body>
<div class="flex flex-col">
    <div class="nav navbar bg-base-100">
        <div class="flex-1">
            <a class="btn btn-ghost text-xl" href="index.php">US ELECTION</a>
        </div>
        <div class="flex-none">
            <button class="btn btn-square btn-ghost">
                <a href="index.php?map=true"><img src="img/img_4.png" class="icon"></a>
            </button>
        </div>
    </div>
    <div class="cont">
        <h1><?= $year ?> Election</h1>
        <div class="flex justify-evenly">
            <div class="flex flex-col justify-between">
                <div  class="flex flex-col justify-between w-96 h-48"> <!-- class="flex flex-row justify-between w-96" -->
                    <div class="flex flex-row justify-between w-96">
                            <?php foreach ($election_votes as $a): ?>
                            <span><?= $a['party_simplified'] == '' ? 'WRITEIN' : $a['party_simplified'] ?></span>
                            <?php endforeach;?>
                    </div>

                    <div class="flex flex-row justify-between w-96">
                            <?php foreach ($percentage as $a): ?>
                            <div class="radial-progress unselectable" style="--value: <?= $a ?>;" role="progressbar"> <?= $a ?>% </div>
                            <?php endforeach;?>
                    </div>

                    <div>
                        <p>
                            Winner: <?= $winner['name'] ?> <br>
                            Party: <?= $winner['party'] ?>
                        </p>
                    </div>

                </div>
                <div class="grid grid-cols-4 gap-4">
                    <?php foreach ($years as $a): ?>
                    <a href="index.php?map&year=<?= $a[0] ?>" class="unselectable"><?= $a[0] ?></a>
                    <?php endforeach;?>
                </div>
            </div>

            <div id="map"></div>
        </div>
    </div>
</div>
<script src="scripts/main.js"></script>
</body>
</html>