@echo off
echo ========================================================
echo    Generating Risk Bunny Professional Presentation PPTX
echo ========================================================
python generate_powerpoint.py Risk_Bunny_Presentation.pptx
if %errorlevel% neq 0 (
    echo [!] Standard python command failed, trying py launcher...
    py generate_powerpoint.py Risk_Bunny_Presentation.pptx
)
echo.
echo ========================================================
echo Presentation generated: Risk_Bunny_Presentation.pptx
echo ========================================================
pause
