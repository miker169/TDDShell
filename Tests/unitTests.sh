#! /usr/bin/env sh

### unitTest.sh ###

source ../functions.sh

function testItCanProvideFirstPlayersName () {
  assertEquals 'John' `getFirstPlayerFrom 'John - Michael'`
}

function testItCanProvideSecondPlayersName () {
  assertEquals 'Michael' `getSecondPlayerFrom 'John - Michael'`
}

function testItCanGetScoreForAPlayerWithOnlyOneWin() {
  standings=$'John - Michael\nJohn'
  assertEquals '1' `getScoreFor 'John' "$standings"`
}

function testItCanGetAScoreForAPlayer() {
  standings=$'John - Michael\nJohn\nMichael\nJohn'
  assertEquals '2' `getScoreFor 'John' "$standings"`
}

function testItCanOutputScoreAsInTennisForFirstPoint() {
  assertEquals 'John: 15 - Michael: 0' "`displayScore 'John' 1 'Michael' 0`"
}

function testItCanOutputScoreAsInTennisForSecondPointFirstPlayer () {
  assertEquals 'John: 30 - Michael: 0' "`displayScore 'John' 2 'Michael' 0`"
}

function testItCanOutputScoreAsInTennisForTHIRDPointFirstPlayer() {
  assertEquals 'John: 40 - Michael: 0' "`displayScore 'John' 3 'Michael' 0`"
}
function testItCanOutputScoreWhenFirstPlayersWinsFirst3Points() {
  assertEquals 'John: 15 - Michael: 0' "`displayScore 'John' 1 'Michael' 0`"
  assertEquals 'John: 30 - Michael: 0' "`displayScore 'John' 2 'Michael' 0`"
  assertEquals 'John: 40 - Michael: 0' "`displayScore 'John' 3 'Michael' 0`"
}

function testItCanOutputScoreWhenSecondPlayerWinsFirst3Points() {
  assertEquals 'John: 0 - Michael: 15' "`displayScore 'John' 0 'Michael' 1`"
  assertEquals 'John: 0 - Michael: 30' "`displayScore 'John' 0 'Michael' 2`"
  assertEquals 'John: 0 - Michael: 40' "`displayScore 'John' 0 'Michael' 3`"
}

function testItSayDeuceWhenPlayersAreEqualAndHaveEnoughPoints() {
  assertEquals 'Deuce' "`displayScore 'John' 3 'Michael' 3`"
}

function testItCanOutputAdvantageForFirstPlayer () {
  assertEquals 'John: Advantage' "`displayScore 'John' 4 'Michael' 3`"
}

function testItCanOutputAdvantageForSecondPlayer () {
  assertEquals 'Michael: Advantage' "`displayScore 'John' 3 'Michael' 4`"
}

### Call and Run all Tests
. "../shunit2-2.1.6/src/shunit2"
