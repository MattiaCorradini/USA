<?php

namespace Model;
use Util\Connection;

class ElectionRepository {
    public static function listAll($anno) {
        $pdo = Connection::getInstance();
        $sql = 'SELECT name, party_detailed FROM (SELECT state.name, party_detailed
                 FROM party INNER JOIN vote ON id_party = party.id
                            INNER JOIN state ON id_state = state.id
                            INNER JOIN election ON id_election = election.id
                 WHERE YEAR = :anno AND (party.party_detailed = \'DEMOCRAT\' OR party.party_detailed = \'REPUBLICAN\')) AS a
                    GROUP BY name;';
        $result = $pdo->prepare($sql);
        $result->execute([
            'anno'=>$anno
        ]);
        return $result->fetchAll();
    }
}