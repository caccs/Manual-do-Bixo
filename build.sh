!#/bin/bash

make

if [ -e _build/manual.pdf ]
then
  echo "Build success"
  exit 0
else
  echo "Build failed"
  exit 1
fi
