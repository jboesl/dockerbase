#!/bin/bash

CUR_DIR=$(dirname $0)

# create links
${CUR_DIR}/link_all.sh
echo "linking was finished successfully."

if [ -f "${AINIT}/start_additional.sh" ]; then
  echo "calling 'start_additional'."
  ${AINIT}/start_additional.sh
fi

exec $@