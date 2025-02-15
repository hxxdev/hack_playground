# tools
## Version Table            
| Tool Name                 | Version       |
| -------------             |:-------------:|
| CheatEngine               | 7.5           |
| x64dbg                    | 25.01.17      |
| HexEdit                   | 2.5.0.0       |
| VS WDK                    | 10.0.26100    |
| VmwareHardenedLoader      | -             |

## Visual Studio Configuration
### PropertySheet
1. View - Other Windows - Property Manager  
2. Right click on your project.  
3. Add Existing Property Sheet  
4. Select /tools/vs/PropertySheet.pros
### Include directories
1. Right click on project.  
2. Properties - VC++ Directories - Include Directories - Inlcude Directories  
3. Add /tools/hacklib/ into the directory list.  
### When working with DLL
1. Right click on project.  
2. Properties - General - Configuration Type  
3. set it to Dynamic Library(.dll)   

## x64dbg
### Language
Options - Languages - en_US  
### Disable TLS Callback
Options - Preferences - disable User TLS Callbacks and System TLS Callbacks 
### Import Settings
Options - Import Settings - Load x64dbg.ini/x32dbg.ini  
