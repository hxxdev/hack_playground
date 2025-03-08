#!/bin/bash
export PATH_HACK=$(pwd)
export PATH_VS="$PATH_WIN/Program Files/Microsoft Visual Studio/2022/Community/Common7/IDE/devenv.exe"
export PATH_CE="$PATH_WIN/Program Files/Cheat Engine 7.5/Cheat Engine.exe"
export PATH_DBG="$PATH_WIN/Debugger"
export PATH_LIST_DLL="$PATH_HACK/tools/ListDlls/Listdlls.exe"

vs() {
   # Take first passed argument and generate absolute path
   FIRST_ARG=$(realpath $1)
   # Convert path (which is now in Unix style) to Windows path
   PATH_TO_VS=$(wslpath -w "$PATH_VS")
   PATH_TO_FILE=$(wslpath -w $FIRST_ARG)
   # Run process using PowerShell
   powershell.exe "Start-Process '${PATH_TO_VS}' '${PATH_TO_FILE}'"
}

ce() {
    local CE_PATH=$(wslpath -w "$PATH_CE")
    powershell.exe "Start-Process \"$CE_PATH\""
}

alias dbg32="\"$PATH_DBG\"/release/x32/x32dbg.exe &"
alias dbg64="\"$PATH_DBG\"/release/x64/x64dbg.exe &"
alias listdll="\"$PATH_LIST_DLL\""
alias flare="\"$PATH_HACK\"/flare/:run_game &"
chmod u+x ./flare/:run_game
chmod u+x ./flare/game/flare.exe

echo "HACK ENV SETUP *******************************************"
echo "VS                    : $PATH_VS"
echo "CHEAT ENGINE          : $PATH_CE"
echo "DEBUGGER              : $PATH_DBG"
echo "LIST DLL              : $PATH_LIST_DLL"
echo "**********************************************************"
echo "HOTKEYS **************************************************"
echo "vs <project file>     : run Visual Studio"
echo "ce                    : run Cheat Engine 7.5"
echo "dbg32                 : run x32 debugger"
echo "dbg64                 : run x64 debugger"
echo "listdll <process name>: list DLLs loaded in process"
echo "flare                 : run game flare.exe"
echo "**********************************************************"



