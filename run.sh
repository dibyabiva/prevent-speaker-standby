#!/bin/bash
cd "$(dirname "$0")"
SCRIPT_DIR="$(pwd)"

AUDIO_USER=`whoami`
AUDIO_XRD="/run/user/$(id -u ${AUDIO_USER})"

while true; do
  # echo "Running..."
  XDG_RUNTIME_DIR="${AUDIO_XRD}" /usr/bin/aplay $SCRIPT_DIR/preventStandbyHum.wav
  sleep 1  # Delay for 1 second
done