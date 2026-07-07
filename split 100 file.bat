@echo off
setlocal enabledelayedexpansion

set /a files_per_folder=100
set /a folder_num=1
set /a file_count=0

if not exist "Part_!folder_num!" mkdir "Part_!folder_num!"

for %%f in (*) do (
    if not "%%f"=="%~nx0" (
        if !file_count! geq !files_per_folder! (
            set /a folder_num+=1
            set /a file_count=0
            if not exist "Part_!folder_num!" mkdir "Part_!folder_num!"
        )
        move "%%f" "Part_!folder_num!\" >nul
        set /a file_count+=1
    )
)

echo All File Splite!
timeout /t 3
