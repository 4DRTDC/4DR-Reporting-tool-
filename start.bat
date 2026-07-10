@echo off
cd /d "%~dp0"
echo Starting 4 Diamond Ranch Operations Ledger on http://localhost:8001 ...
start "" http://localhost:8001/index.html
python -m http.server 8001
