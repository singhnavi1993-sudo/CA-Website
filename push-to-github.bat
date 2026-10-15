@echo off
title Push CA Website to GitHub
color 0B
echo ===================================================================
echo               CA Website - Push Project to GitHub
echo ===================================================================
echo.
echo Target Repository: https://github.com/singhnavi1993-sudo/CA-Website
echo Branch: main
echo.
echo Connecting to GitHub repository...
git remote remove origin 2>nul
git remote add origin https://github.com/singhnavi1993-sudo/CA-Website
git branch -M main

echo.
echo Pushing project files to GitHub main branch...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ===================================================================
    echo  [SUCCESS] Project pushed to GitHub successfully!
    echo ===================================================================
) else (
    echo.
    echo ===================================================================
    echo  [NOTICE] If authentication failed, please log in with your GitHub
    echo  credentials in the browser window or use a Personal Access Token.
    echo ===================================================================
)
echo.
pause
