Q&R NEXUS — AI-Powered Trading Platform

Q&R NEXUS is a high-performance C++ application combining a Drogon backend API and a Sciter-based native frontend, powered by Groq AI for intelligent trading insights and real-time decision logic. The platform delivers lightning-fast response times, secure encrypted communication, and a clean native interface.

TECH STACK
Frontend: React — Native UI with HTML + CSS + JS
Backend: Drogon — Asynchronous C++ web framework
Networking: cURL + OpenSSL — HTTPS requests & secure APIs
Logging: spdlog
JSON: nlohmann-json
AI Engine: Groq API

PROJECT STRUCTURE
Q-R-NEXUS/
├── client/ → React UI (frontend interface)
├── server/ → Drogon API in C++ (trade logic, AI integration)
├── shared/ → Common headers & DTOs
├── deployment/ → Build or Docker scripts
├── docs/ → Technical documentation
├── vcpkg.json → Dependency manifest
├── CMakeLists.txt → Root CMake build file
└── CMakePresets.json → Build presets (Ninja + vcpkg)

🛠️ Build & Run Instructions (CMake + Visual Build Tools)
1️⃣ Install Requirements

Before you start, make sure the following are installed:

Visual Studio Build Tools 2022

✅ During installation, check the box for “Desktop development with C++”.

CMake
 (version 3.24 or newer)

💡 You don’t need to manually install Ninja or other build tools —
CMake will handle that automatically during the build.

2️⃣ Open Developer Command Prompt

After installing, open:

🟢 "x64 Native Tools Command Prompt for VS 2022"

Then move to your project directory:

cd /d "your folder in which repo is cloned"

3️⃣ Automatic Build (Recommended)

Simply run the startup script:

start.bat


✅ This will:

Initialize the Visual C++ compiler environment

Run CMake configuration (cmake --preset default)

Automatically build the project (cmake --build --preset build)

Launch the server  after a successful build

4️⃣ Manual Build (Optional)

If you prefer to build manually instead of using start.bat, run:

cmake --preset default
cmake --build --preset build


Or, if your CMake project doesn’t use presets yet:

cmake -S . -B build
cmake --build build

5️⃣ Running the Application

Once the build finishes successfully, you’ll find the compiled files in:

build/server/ai_trading_server.exe

You can run them manually or let start.bat handle it for you.

6️⃣ Troubleshooting

❌ Error: CMAKE_CXX_COMPILER not set
→ You’re not in the Developer Command Prompt. Open the correct one for VS2022.

❌ Old cache or broken build
→ Delete your build/ folder and reconfigure:

rmdir /s /q build
cmake -S . -B build
cmake --build build


❌ Missing tools or dependencies
→ Run start.bat — it will automatically trigger CMake to install what’s needed.


FUTURE INTEGRATIONS
- Groq AI Integration
- Live Market Data
- Sciter UI Bridge
- Encrypted Sessions

LICENSE
MIT License © 2025 Q&R Labs

VISION
Q&R NEXUS represents the next generation of AI-driven trading ecosystems, merging the low-level power of C++ with Groq’s neural execution and a fluid, native UI. Engineered for speed, reliability, and future expansion.

