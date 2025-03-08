### How to setup Visual Studio for Driver Development
1. Install [Visual Studio 2022 Community](https://visualstudio.microsoft.com/ko/vs/community/)
2. In Visual Studio Installer, install the following components.
You can easily navigate these components by searching `64 latest spectre`.
- Latest SDK(`Win11 SDK`)
- MSVC v143 - VS 2022 C++ ARM64/ARM64EC Spectre-mitigated libs (Latest)
- MSVC v143 - VS 2022 C++ x64/x86 Spectre-mitigated libs (Latest)
- C++ ATL for latest v143 build tools with Spectre Mitigations (ARM64/ARM64EC)
- C++ ATL for latest v143 build tools with Spectre Mitigations (x86 & x64)
- C++ MFC for latest v143 build tools with Spectre Mitigations (ARM64/ARM64EC)
- C++ MFC for latest v143 build tools with Spectre Mitigations (x86 & x64)
3. Install WDK.
4. Install the followings for remote connection to WSL.
- C++ for Linux development
- CMake tool for Linux development
- Remote file explorer for Linux developlment
