<!DOCTYPE html>
<html lang="en" data-theme="corporate">
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
    <div class="nav navbar glass z-40" style=" background-image: none; ">
        <div class="flex-1">
            <a class="btn btn-ghost text-xl" href="index.php">US ELECTION</a>
        </div>
        <div class="flex justify-between w-28">
            <div>
                <label class="swap swap-rotate">

                    <!-- this hidden checkbox controls the state -->
                    <input type="checkbox" id="theme" class="theme-controller" value="sunset" />

                    <!-- sun icon -->
                    <svg class="swap-off fill-current w-10 h-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M5.64,17l-.71.71a1,1,0,0,0,0,1.41,1,1,0,0,0,1.41,0l.71-.71A1,1,0,0,0,5.64,17ZM5,12a1,1,0,0,0-1-1H3a1,1,0,0,0,0,2H4A1,1,0,0,0,5,12Zm7-7a1,1,0,0,0,1-1V3a1,1,0,0,0-2,0V4A1,1,0,0,0,12,5ZM5.64,7.05a1,1,0,0,0,.7.29,1,1,0,0,0,.71-.29,1,1,0,0,0,0-1.41l-.71-.71A1,1,0,0,0,4.93,6.34Zm12,.29a1,1,0,0,0,.7-.29l.71-.71a1,1,0,1,0-1.41-1.41L17,5.64a1,1,0,0,0,0,1.41A1,1,0,0,0,17.66,7.34ZM21,11H20a1,1,0,0,0,0,2h1a1,1,0,0,0,0-2Zm-9,8a1,1,0,0,0-1,1v1a1,1,0,0,0,2,0V20A1,1,0,0,0,12,19ZM18.36,17A1,1,0,0,0,17,18.36l.71.71a1,1,0,0,0,1.41,0,1,1,0,0,0,0-1.41ZM12,6.5A5.5,5.5,0,1,0,17.5,12,5.51,5.51,0,0,0,12,6.5Zm0,9A3.5,3.5,0,1,1,15.5,12,3.5,3.5,0,0,1,12,15.5Z"/></svg>

                    <!-- moon icon -->
                    <svg class="swap-on fill-current w-10 h-10" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M21.64,13a1,1,0,0,0-1.05-.14,8.05,8.05,0,0,1-3.37.73A8.15,8.15,0,0,1,9.08,5.49a8.59,8.59,0,0,1,.25-2A1,1,0,0,0,8,2.36,10.14,10.14,0,1,0,22,14.05,1,1,0,0,0,21.64,13Zm-9.5,6.69A8.14,8.14,0,0,1,7.08,5.22v.27A10.15,10.15,0,0,0,17.22,15.63a9.79,9.79,0,0,0,2.1-.22A8.11,8.11,0,0,1,12.14,19.73Z"/></svg>

                </label>
            </div>
            <div>
                <button class="btn btn-square btn-ghost">
                    <a href="index.php?map=true"><img src="./img/img_4.png" class="icon"></a>
                </button>
            </div>
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
<script src="scripts/themeload.js"></script>
</body>
</html>