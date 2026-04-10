# Windows Config Tool
A lightweight batch utility for users who want to customize windows without having to navigate complex settings themselves. This tool is specificly for users with unactivated windows where personalization settings are locked. Its only for Windows 11.
## Features
* 🌓 **Theme Change** Force Enable Dark Mode or Light Mode.
* ✂️ **Watermark Removal:** Disables the "Activate Windows" watermark (Requires Reboot).
* 🔐 **MAS Interated** Has built in intergration with MAS to permanently activate Windows.
* 🎨 **UI Refresh** Automatically restarts Windows Explorer to apply theme changes

## How To Use
1. Dowload The .bat file
2. Right-click the file and run it as administrator (this is required so it can edit the registry files and run MAS)
3. Choose an option from the menu.
4. Navigating MAS (Option 4)
   1. Once you select Option 4 the script will launch a external MAS interface
   2. From this point forward you are on your own
   3. I do not control MAS interface so use the MAS documentation (massgrave.dev) if you are unsure which activation method to choose.

## Giving Credit Where It Is Due
The activation logic in this script is powered by the **Microsoft Activation Scripts (MAS)** project by **massgravel**. 
- **Original Project:** https://github.com/massgravel/microsoft-activation-scripts
- This batch file serves as a simplified wrapper and shortcut for their excellent work.

## Disclaimer
*This tool is provided for educational purposes only. Modifying the Windows Registry and activating software via third-party scripts can carry risks. The author is not responsible for any system instability, data loss, or legal issues arising from the use of this tool. Use at your own risk.*

## License
Distributed under the **GNU GPLv3 License**. See `LICENSE` for more information.
