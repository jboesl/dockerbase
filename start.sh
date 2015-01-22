#!/bin/bash


# run init scripts
for file in "${AINIT}"/*.sh
do
  echo "calling '${file}'."
  ${file}
done

exec $@