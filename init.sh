#!/bin/bash

current_dir=$PWD

cd $current_dir

echo -e "Initializing app core"
flutter pub get 

flutter pub run intl_utils:generate

flutter packages pub run build_runner build --delete-conflicting-outputs
wait
