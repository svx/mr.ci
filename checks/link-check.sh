#!/bin/bash

#cd app
echo "Running Linkcheck"
#../tests.sh | while read -r line ; do sphinx-build -c../conf -b linkcheck -d docs/_build/doctrees docs docs/_build/tests/$line $line; done
./tests.sh | while read -r line ; do docker run -i --rm -v ${PWD}/docs:/build/docs:rw -u $(id -u):$(id -g) --name docs-test-foo quay.io/tiramisu/mr.docs linkcheck $line; done
