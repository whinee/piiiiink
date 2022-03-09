#!/bin/bash

for i in tests/test.*
do
  code --extensions-dir extensions -n "$i"
  sleep 10
  flameshot full -p "./examples/${i##*.}.png"
  kill -s KILL $(pgrep code)
done