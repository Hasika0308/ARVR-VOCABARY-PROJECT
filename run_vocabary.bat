@echo off
title VocabARy - AR/VR Multilingual Object Recognition & Gesture System
echo ==============================================================================
echo     VocabARy: AR Multilingual Object Recognition & Gesture Learning System
echo ==============================================================================
echo.
echo [1/3] Activating virtual environment...
cd /d "%~dp0"
call venv\Scripts\activate.bat

echo [2/3] Checking system dependencies & PyTorch YOLOv5...
python manage.py check

echo [3/3] Starting VocabARy Local Server at http://127.0.0.1:8000 ...
echo.
echo ==============================================================================
echo   VocabARy is LIVE! Open your browser:
echo   - Home Dashboard:        http://127.0.0.1:8000/
echo   - Live AR Detection:     http://127.0.0.1:8000/detect/
echo   - Vocabulary Repository: http://127.0.0.1:8000/list/
echo   - Gesture Air-Writing:   http://127.0.0.1:8000/gesture_write/apple/
echo ==============================================================================
echo Press Ctrl+C in this terminal window to stop the server.
echo.
python manage.py runserver 127.0.0.1:8000 --noreload
pause
