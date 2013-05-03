#! /usr/bin/env sh

### firstTest.sh ###

function testWeCanWriteTests () {
  assertEquals "It works" "it does not work"
}

## Call and Run all the Tests
. "../shunit2-2.1.6/src/shunit2"
