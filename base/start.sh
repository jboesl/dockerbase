#!/bin/bash

CUR_DIR=$(dirname $0)

# create links
LINK_ALL_DIR=${AINIT}/fs
if [ -d ${LINK_ALL_DIR} ]; then
  echo "linking was finished successfully."
  ${CUR_DIR}/link_all.sh ${LINK_ALL_DIR}
fi

# run init scripts
for file in "${AINIT}"/*.sh
do
  echo "calling '${file}'."
  ${file}
done

exec $@