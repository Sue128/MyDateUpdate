#!/bin/bash

git config --global user.email "kangsue128@gmail.com"
git config --global user.name "Sue128"

git add .
echo "add ok!"
git commit -m "$(date)"
echo "commit ok!"
git push origin main
echo "push ok!"
