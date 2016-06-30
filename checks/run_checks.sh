#!/bin/bash
set -e
bash checks/test.sh | while read -r line ; do docker run -i --rm -v ${PWD}/docs:/build/docs:rw -u $(id -u):$(id -g) --name docs-test-foo quay.io/tiramisu/mr.docs linkcheck $line; done
