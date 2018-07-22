#!/bin/bash

# Define build commands
function buildx86 {
  for i in $(find -maxdepth 2 -iname Dockerfile); do
    # Okay so this is a complete hack but it feeds the Dockerfile path into "dirname" to isolate
    # just the path, and then it feeds it back into "basename", which treats it as if it's a file
    # path and trims down to what it thinks is the "file", which in reality is our directory name
    # and thus the name we want for our container. If someone is reading this and knows a saner
    # way to do this, please let me know.
    NAME=$(basename $(dirname $i))

    docker build -f "$i" -t "$NAME" "$(dirname $i)"
  done

  echo "Building complete."
}

function buildpi {
  for i in $(find -maxdepth 2 -iname Dockerfile.arm32v6); do
    NAME=$(basename $(dirname $i))
    docker build -f "$i" -t "$NAME" "$(dirname $i)"
  done

  for i in $(find -maxdepth 2 -iname Dockerfile.arm32v7); do
    NAME=$(basename $(dirname $i))
    docker build -f "$i" -t "$NAME" "$(dirname $i)"
  done
  
  echo "Building complete."
}

# Discover arch
ARCH=$(uname -m)

# Run builds depending on arch
if [ "$ARCH" = "x86_64" ]; then
  echo "64-bit x86 CPU found."
  echo "Building x86_64 Dockerfiles."

  buildx86
elif [ "$ARCH" = "armv7l" ]; then
  if [ $(grep "Raspbian" /etc/os-release | wc -l) -gt 0 ]; then
    echo "Found Raspbian on armv7l."
    echo "This looks like a Raspberry Pi 2/3."
    echo "Building arm32v6 and arm32v7 Dockerfiles."

    buildpi
  else
    echo "I found an armv7l CPU but this doesn't look like Raspbian."
    echo "Currently only Raspbian is supported on this architecture."
    echo "Exiting."

    exit 102
  fi
else
  echo "Could not determine CPU architecture. Exiting."

  exit 101
fi