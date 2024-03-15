<?php

    require 'vendor/autoload.php';
    require_once 'conf/config.php';
    $template = new League\Plates\Engine('templates', 'tpl');



    if (isset($_GET['map']) && $_GET['map']){
        $data = Model\ElectionRepository::listAll($_GET['year'] ?? 1976);
        $republicans = [];
        $democrats = [];
        foreach ($data as $state){
            if ($state['party_detailed'] == 'REPUBLICAN')
                $republicans[] = $state['name'];
            else
                $democrats[] = $state['name'];
        }
        $result = [
            'republicans'=>$republicans,
            'democrats'=>$democrats
        ];
        $path = 'data/data.json';
        $jsonString = json_encode($result, JSON_PRETTY_PRINT);
        $fp = fopen($path, 'w');
        fwrite($fp, $jsonString);
        fclose($fp);
        echo $template->render('map', [
            'year'=>$_GET['year'] ?? 1976
        ]);
    }
    else
        echo $template->render('index');