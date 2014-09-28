#!/bin/bash

CUR_DIR=$(dirname $0)

# create links
LINK_ALL_DIR=${AINIT}/fs
if [ -d ${LINK_ALL_DIR} ]; then
  echo "linking was finished successfully."
  ${CUR_DIR}/link_all.sh ${LINK_ALL_DIR}
fi

# call additional
if [ -f "${AINIT}/start_additional.sh" ]; then
  echo "calling 'start_additional'."
  ${AINIT}/start_additional.sh
fi

exec $@