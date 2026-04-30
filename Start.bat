@echo off
chcp 65001 >nul
echo.
echo ======================================================
echo   Q^&R NEXUS - AI Trading Platform (C++)
echo ======================================================
echo.

REM === Check Visual Studio Build Tools ===
set "VS_PATH=C:\Program Files (x86)\Microsoft Visual Studio\2022\BuildTools"
if not exist "%VS_PATH%\VC\Auxiliary\Build\vcvarsall.bat" (
    echo [ERROR] Visual Studio Build Tools not found!
    echo Please install "Desktop development with C++".
    pause
    exit /b 1
)

REM === Initialize compiler environment ===
echo [INFO] Initializing MSVC build environment...
call "%VS_PATH%\VC\Auxiliary\Build\vcvarsall.bat" x64
if errorlevel 1 (
    echo [ERROR] Failed to initialize MSVC environment.
    pause
    exit /b 1
)

REM === Move to script directory ===
cd /d "%~dp0"
echo [INFO] Working directory: %cd%

REM === Force re-configuration by deleting build cache ===
if exist build (
    echo [INFO] Removing old build directory...
    rmdir /s /q build
)

REM === Configure project ===
echo [INFO] Running CMake configuration...
cmake --preset default
if errorlevel 1 (
    echo [ERROR] CMake configuration failed.
    pause
    exit /b 1
)

REM === Build project ===
echo [INFO] Building project...
cmake --build --preset build
if errorlevel 1 (
    echo [ERROR] Build failed.
    pause
    exit /b 1
)



REM --- POST-BUILD VERIFICATION ---
echo [INFO] Verifying build output...

set "SERVER_EXE=build\ai_trading_server.exe"
set "DROGON_CTL=build\Debug\drogon_ctl.exe"

if not exist "%SERVER_EXE%" (
    echo [ERROR] Server executable not found: %SERVER_EXE%
    pause
    exit /b 1
)



echo [SUCCESS] Build completed successfully.
echo.

REM === Start Drogon server ===
echo [INFO] Starting AI Trading Server...
cd build
"%SERVER_EXE%"

echo.
echo ------------------------------------------------------
echo Build and startup process completed successfully.
echo ------------------------------------------------------
pause
