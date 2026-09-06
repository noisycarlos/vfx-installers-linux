#!/bin/bash

app_name="Neat Video"

installer_location=/home/$USER/Downloads
if [ $# -gt 0 ]; then
  installer_location="$1"
fi

installer_path_compressed=$(find $installer_location -maxdepth 1 -type f -name 'NeatVideo*OFX.Pro.Intel64.tgz' | sort -V | tail -n 1)
installer_path=${installer_path_compressed%.tgz}.run
installer_filename=${installer_path##*/}

if [ -f "$installer_path_compressed" ] &&
  [ ! -f "$installer_path" ]; then
  echo "Uncompressing ${installer_path##*/}..."
  tar -xzf $installer_path_compressed -C $installer_location
fi

if [ ! -f "$installer_path" ]; then
  echo "--- Could not find .run file for tgz. Looking for any other .run file..."
  installer_path=$(find $installer_location -maxdepth 1 -type f -name 'NeatVideo*OFX.Pro.Intel64.tgz' | sort -V | tail -n 1)
fi

if [ ! -f "$installer_path" ]; then
  echo "--- Skipping installation of ${app_name}, no installers found."
  exit 1
fi

echo "--- Installing ${app_name} from ${installer_filename}..."

sudo $installer_path --mode silent

echo "--- Finished installing ${app_name}"
