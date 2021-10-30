#!/bin/bash

git add .
echo "add ok!"
git commit -m "$(date)"
echo "commit ok!"
git push origin main
echo "push ok!"
