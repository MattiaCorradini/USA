<?php

namespace Model;
use Util\Connection;

class ElectionRepository {
    public static function getParty($anno) {
        $pdo = Connection::getInstance();
        $sql = 'SELECT party_detailed, s.name
                FROM vote
                INNER JOIN state as s
                ON vote.id_state = s.id
                INNER JOIN election
                ON vote.id_election = election.id
                INNER JOIN party
                ON vote.id_party = party.id
                WHERE year = :anno AND vote.candidatevotes = (SELECT MAX(vote.candidatevotes)
                                                             FROM vote
                                                             INNER JOIN state
                                                             ON vote.id_state = state.id
                                                             INNER JOIN election
                                                             ON vote.id_election = election.id
                                                             INNER JOIN party
                                                             ON vote.id_party = party.id
                                                             WHERE year = :anno AND state.name = s.name)
                GROUP BY s.name;';
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
            ORDER BY votes DESC
            LIMIT 2';
        $result = $pdo->prepare($sql);
        $result->execute([
            'year'=>$year
        ]);
        return $result->fetchAll();
    }

    public static function getVotes($year): array{
        $pdo = Connection::getInstance();
        $sql = 'SELECT SUM(candidatevotes)
                FROM vote
                INNER JOIN election
                ON vote.id_election = election.id
                WHERE year = :year;';
        $result = $pdo->prepare($sql);
        $result->execute([
            'year'=>$year
        ]);
        return $result->fetchAll();
    }

    public static function getOtherVotes($year): array{
        $pdo = Connection::getInstance();
        $sql = 'SELECT SUM(candidatevotes) as votes
                FROM (SELECT candidatevotes
                      FROM vote
                      INNER JOIN election
                      ON vote.id_election = election.id
                      INNER JOIN party
                      ON vote.id_party = party.id
                      WHERE year = :year AND party_detailed != \'REPUBLICAN\' AND party_detailed != \'DEMOCRAT\')  as A';
        $result = $pdo->prepare($sql);
        $result->execute([
            'year'=>$year
        ]);
        return $result->fetchAll();
    }

    public static function getStateWinnerParty($state){
        $pdo = Connection::getInstance();
        $sql = 'SELECT party_detailed, year
                FROM vote
                INNER JOIN state
                ON vote.id_state = state.id
                INNER JOIN election as e
                ON vote.id_election = e.id
                INNER JOIN party
                ON vote.id_party = party.id
                WHERE state.name = :state AND vote.candidatevotes = (SELECT MAX(vote.candidatevotes)
                                                                     FROM vote
                                                                     INNER JOIN state
                                                                     ON vote.id_state = state.id
                                                                     INNER JOIN election
                                                                     ON vote.id_election = election.id
                                                                     INNER JOIN party
                                                                     ON vote.id_party = party.id
                                                                     WHERE year = e.year AND state.name = :state)
                GROUP BY year;';
        $result = $pdo->prepare($sql);
        $result->execute([
            'state'=>$state
        ]);
        return $result->fetchAll();
    }

    public static function getStateParties($state){
        $pdo = Connection::getInstance();
        $sql = 'SELECT party_detailed AS party, year, candidatevotes AS votes
                FROM vote
                INNER JOIN state
                ON vote.id_state = state.id
                INNER JOIN election as e
                ON vote.id_election = e.id
                INNER JOIN party
                ON vote.id_party = party.id
                WHERE state.name = :state AND (party_detailed = \'REPUBLICAN\' OR party_detailed = \'DEMOCRAT\');';
        $result = $pdo->prepare($sql);
        $result->execute([
            'state'=>$state
        ]);
        return $result->fetchAll();
    }
}