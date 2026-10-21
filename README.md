# Windows Config Tool 
> **Status:**  **Pre-release (Alpha)**  
> This tool is in active development. Expect errors and changes.

A light weight batch utility for users with unactivated windows and are to lazy to dig through registry themselves. Compatible only with Windows 11.

## Features
- Force enable light/dark mode.
- Removes Windows watermark (unverified, if it works the watermark may return later)
- [MAS](https://github.com/massgravel/microsoft-activation-scripts) intergration to permanently activate windows.

## Usage
1. Download the `.bat` file from [latest release](../../releases/latest).
2. Run the `.bat` file as administrator.
3. Choose a option
   * Enable light/dark mode: Change theme between dark/light.
   * Remove Activation Watermark: Temporarily removes activation watermark, unstable require reboot to take effect.
   * MAS: Launches MAS online launcher, please use the [Official MAS Documentation](https://massgrave.dev) if you are unsure which activation method to choose.
   * More Details: Opens link to the official [MAS](https://github.com/massgravel/microsoft-activation-scripts) project page.
   * Exit: Closes terminal.

## Credit

The activation logic in this script is powered by the **Microsoft Activation Scripts (MAS)** project by **massgravel**. 

* **Original Project:** [MAS GitHub Repository](https://github.com/massgravel/microsoft-activation-scripts)
* This batch file serves as a simplified wrapper and shortcut for their excellent work.

## Disclaimer
*This tool is provided for educational purposes only. Modifying the Windows Registry and activating software via third-party scripts can carry risks. The author is not responsible for any system instability, data loss, or legal issues arising from the use of this tool. Use at your own risk.*

## License

Distributed under the **GNU GPLv3 License**. See the `LICENSE` file in this repository for more information.
