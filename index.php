<?php

    require 'vendor/autoload.php';
    require_once 'conf/config.php';
    $template = new League\Plates\Engine('templates', 'tpl');

    $winners = [
        '1976'=>['name'=>'Jimmy Carter', 'party'=>'Democrat'],
        '1980'=>['name'=>'Ronald Regan', 'party'=>'Republican'],
        '1984'=>['name'=>'Ronald Regan', 'party'=>'Republican'],
        '1988'=>['name'=>'George H. W. Bush', 'party'=>'Republican'],
        '1992'=>['name'=>'Bill Clinton', 'party'=>'Democrat'],
        '1996'=>['name'=>'Bill Clinton', 'party'=>'Democrat'],
        '2000'=>['name'=>'George W. Bush', 'party'=>'Republican'],
        '2004'=>['name'=>'George W. Bush', 'party'=>'Republican'],
        '2008'=>['name'=>'Barack Obama', 'party'=>'Democrat'],
        '2012'=>['name'=>'Barack Obama', 'party'=>'Democrat'],
        '2016'=>['name'=>'Donald Trump', 'party'=>'Republican'],
        '2020'=>['name'=>'Joe Biden', 'party'=>'Democrat']
    ];


    if (isset($_GET['map'])){
        $year = $_GET['year'] ?? 1976;
        $data = Model\ElectionRepository::getParty($year);
        $republicans = [];
        $democrats = [];
        foreach ($data as $state){
            if ($state['party_simplified'] == 'REPUBLICAN')
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
        $election_votes = \Model\ElectionRepository::getParties($year);
        $election_votes[] = ['party_simplified'=>'OTHER', 'votes'=>\Model\ElectionRepository::getOtherVotes($year)[0][0]];
        $totalvotes = \Model\ElectionRepository::getVotes($year)[0][0];
        $percentage = [];
        foreach ($election_votes as $vote){
            $percentage[] = round($vote['votes'] / $totalvotes * 100, 1);
        }
        echo $template->render('map', [
            'year'=>$year,
            'years'=>$years,
            'election_votes'=>$election_votes,
            'totalvotes'=>$totalvotes,
            'percentage'=>$percentage,
            'winner'=>$winners[$year]
        ]);
    }
    else if (isset($_GET['state'])){
        $json_string = file_get_contents('data/info.json');
        $data = json_decode($json_string, true);
        $informazioni = [];
        foreach ($data['features'] as $feature) {
            if ($feature['name'] === $_GET['state']) {
                $informazioni['name'] = $feature['name'];
                $informazioni['ist'] = $feature['foundation'];
                $informazioni['cap'] = $feature['capital'];
                $informazioni['sto'] = $feature['history'];
                break;
            }
        }
        $temp = \Model\ElectionRepository::getStateParties($_GET['state']);
        $parties = [];
        foreach ($temp as $party){
            if (!isset($parties[$party['year']]))
                $parties[$party['year']] = [];
            $parties[$party['year']][$party['party']] = $party['votes'];
        }
        $path = 'data/data.json';
        $jsonString = json_encode($parties, JSON_PRETTY_PRINT);
        $fp = fopen($path, 'w');
        fwrite($fp, $jsonString);
        fclose($fp);

        echo $template->render('state', [
            'state'=>$informazioni
        ]);
    }
    else
        echo $template->render('index');