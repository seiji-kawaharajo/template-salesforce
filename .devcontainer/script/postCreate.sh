#!/bin/bash

if [ ! -f "sfdx-project.json" ]; then
  if [ -f README.md ]; then
    mv README.md README.md.bak
  fi

  sfdx force:project:create -n $(basename `pwd`) --manifest --outputdir ../

  if [ -f README.md.bak ]; then
    mv README.md.bak README.md
  fi
fi

npm i
