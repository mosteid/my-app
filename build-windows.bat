@echo off
chcp 65001 >nul
echo === تثبيت المكتبات (يحتاج انترنت مرة واحدة) ===
call npm install
if errorlevel 1 goto err
echo === بناء ملف التثبيت ===
call npm run build
if errorlevel 1 goto err
echo.
echo تم! ستجد الملفات في مجلد dist
explorer dist
pause
exit /b
:err
echo حدث خطأ. تأكد من تثبيت Node.js من https://nodejs.org
pause
