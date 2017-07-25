#!/bin/bash

mkdir -p module1/target
mkdir -p module2/target
if [[ -e module1/target/.surefire-foobar ]]; then
    cat module1/target/.surefire-foobar
fi
cat >> module1/target/.surefire-foobar << EOF
abcdefg
EOF
if [[ -e module2/target/.surefire-foobaz ]]; then
    cat module2/target/.surefire-foobaz
fi
cat >> module2/target/.surefire-foobaz << EOF
abc
efg
hij
EOF
