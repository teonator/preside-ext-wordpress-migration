#!/bin/bash

cd `dirname $0`
exitcode=0

if [ ! -d "`dirname $0`/tests/testbox" ]; then
  box install
fi

box stop name="wordpress-migrationtests"
box start directory="./tests/" serverConfigFile="./server-tests.json"
box testbox run verbose=false || exitcode=1
box stop name="wordpress-migrationtests"

exit $exitcode
