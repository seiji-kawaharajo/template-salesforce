#!/bin/bash

if [ -f README.md ]; then
  mv README.md README.md.bak
fi

if [ ! -f "package.json" ]; then
  sfdx force:project:create -n $(basename `pwd`) --manifest --outputdir ../
fi

if [ -f README.md.bak ]; then
  mv README.md.bak README.md
fi

npm i
