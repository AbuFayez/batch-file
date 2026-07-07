@echo off
title New Project Creator
set /p proj_name="Enter the name of a new project : "

mkdir "%proj_name%"
cd "%proj_name%"

mkdir "01_Raw_Footage"
mkdir "02_Audio_Music"
mkdir "03_Graphics_Assets"
mkdir "04_Exports_Drafts"
mkdir "05_Final_Delivery"

echo Project: %proj_name% > "Notes.txt"
echo Write Notes here ... >> "Notes.txt"

echo Files of "%proj_name%" Done!
timeout /t 3
