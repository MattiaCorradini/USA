<?php

    require 'vendor/autoload.php';
    require_once 'conf/config.php';
    $template = new League\Plates\Engine('templates', 'tpl');

    if (isset($_GET['map'])){
        $data = Model\ElectionRepository::getParty($_GET['year'] ?? 1976);
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
        $years = \Model\ElectionRepository::getYears();
        $election_info = \Model\ElectionRepository::getParties($_GET['year'] ?? 1976);
        echo $template->render('map', [
            'year'=>$_GET['year'] ?? 1976,
            'years'=>$years,
            'election_info'=>$election_info
        ]);
    }
    else if (isset($_GET['state'])){
        echo $template->render('state', [
            'state'=>$_GET['state']
        ]);
    }
    else
        echo $template->render('index');