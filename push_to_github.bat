@echo off
set GIT_PATH=C:\Users\chowd\.gemini\antigravity\scratch\git\cmd\git.exe
echo ========================================================
echo Push AtlasApp to GitHub
echo ========================================================
echo.
echo Make sure you have created an empty repository on GitHub:
echo https://github.com/new
echo.
set /p REPO_URL="Enter your GitHub repository URL (e.g., https://github.com/username/atlas-app.git): "

if "%REPO_URL%"=="" (
    echo No repository URL provided. Aborting.
    pause
    exit /b
)

"%GIT_PATH%" remote remove origin 2>nul
"%GIT_PATH%" remote add origin %REPO_URL%
"%GIT_PATH%" branch -M main
echo.
echo Pushing to GitHub...
"%GIT_PATH%" push -u origin main

echo.
echo Done!
pause
