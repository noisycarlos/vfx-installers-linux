#!/bin/bash

app_name="Mocha (Standalone)"

installer_location=/home/$USER/Downloads
if [ $# -gt 0 ]; then
  installer_location="$1"
fi

installer_path=$(find $installer_location -maxdepth 1 -type f -name 'MochaPro-2*.rpm' | sort -V | tail -n 1)
installer_filename=${installer_path##*/}

if [ ! -f "$installer_path" ]; then
  echo "--- Skipping installation of ${app_name}, no installers found."
  exit 1
fi

echo "--- Installing ${app_name} from ${installer_filename}..."
sudo dnf install $installer_path -y
echo "--- Finished installing ${app_name}"
