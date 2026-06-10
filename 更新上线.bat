@echo off
chcp 65001 >nul
cd /d "%~dp0"
echo ============================================
echo   小花战记 - 一键更新上线
echo ============================================
echo.
git add -A
set /p msg=输入这次更新说明(直接回车用默认):
if "%msg%"=="" set msg=update game
git commit -m "%msg%"
echo.
echo 正在推送到 GitHub...
git push
echo.
echo ============================================
echo   完成！约 1 分钟后线上链接就会刷新。
echo ============================================
pause
