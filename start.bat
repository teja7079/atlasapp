@echo off
echo ========================================================
echo Starting AtlasApp (MERN Stack Application)
echo ========================================================

echo Starting Backend Server on port 5000...
start "AtlasApp Backend" cmd /k "cd /d %~dp0backend && npm run dev"

echo Starting Frontend Server on port 3000...
start "AtlasApp Frontend" cmd /k "cd /d %~dp0frontend && npm run dev"

echo Opening browser...
timeout /t 3 /nobreak >nul
start http://localhost:3000

echo Both servers started!
pause
