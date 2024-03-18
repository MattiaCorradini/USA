<?php

namespace Model;
use Util\Connection;

class ElectionRepository {
    public static function getParty($anno) {
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
    public static function getYears(): array {
        $pdo = Connection::getInstance();
        $sql = 'SELECT year
                FROM election;';
        $result = $pdo->query($sql);
        return $result->fetchAll();
    }

    public static function getParties($year): array{
        $pdo = Connection::getInstance();
        $sql = 'SELECT party_detailed, votes
            FROM (SELECT party.party_detailed, SUM(vote.candidatevotes) as votes
                  FROM vote
                           INNER JOIN party
                                      ON vote.id_party = party.id
                           INNER JOIN election
                                      ON vote.id_election = election.id
                  WHERE election.year = :year
                  GROUP BY party.party_detailed) as a
            ORDER BY votes DESC';
        $result = $pdo->prepare($sql);
        $result->execute([
            'year'=>$year
        ]);
        return $result->fetchAll();
    }
}