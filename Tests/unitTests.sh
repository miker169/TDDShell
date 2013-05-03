#! /usr/bin/env sh

### unitTest.sh ###

source ../functions.sh

function testItCanProvideFirstPlayersName () {
  assertEquals 'John' `getFirstPlayerFrom 'John - Michael'`
}

### Call and Run all Tests
. "../shunit2-2.1.6/src/shunit2"
