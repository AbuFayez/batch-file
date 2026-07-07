@echo off
title Custom File Sorter


if exist *.jpg (mkdir Images && move *.jpg Images\)
if exist *.png (mkdir Images && move *.png Images\)


if exist *.mp4 (mkdir Video && move *.mp4 Video\)
if exist *.avi (mkdir Video && move *.avi Video\)


if exist *.mp3 (mkdir Sound && move *.mp3 Sound\)
if exist *.wav (mkdir Sound && move *.wav Sound\)

if exist *.pdf (mkdir Documents && move *.pdf Documents\)
if exist *.docx (mkdir Documents && move *.docx Documents\)
if exist *.txt (mkdir Documents && move *.txt Documents\)


if exist *.zip (mkdir Compressed && move *.zip Compressed\)
if exist *.rar (mkdir Compressed && move *.rar Compressed\)

echo Sorting complete!
timeout /t 3
