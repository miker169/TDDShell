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

### Call and Run all Tests
. "../shunit2-2.1.6/src/shunit2"
