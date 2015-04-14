#!/bin/bash

currentDay=$(date +"%d")

function modifyAndCommit {
    echo $RANDOM > $1
    git commit $1 -m "Modified $1"
}

if (( $currentDay % 2 == 0))
then
    modifyAndCommit a
    modifyAndCommit b
    modifyAndCommit c
else
    modifyAndCommit a
fi

git push
