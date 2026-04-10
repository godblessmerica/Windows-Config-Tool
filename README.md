# 🛠️ Windows Config Tool

A lightweight batch utility for users who want to customize Windows without having to dig through the registry themselves. This tool is specifically designed for users with unactivated Windows where personalization settings are locked. It is for Windows 11.

## ✨ Features

* 🌓 **Theme Change:** Force Enable Dark Mode or Light Mode.
* ✂️ **Watermark Removal:** Disables the "Activate Windows" watermark (Requires Reboot).
* 🔐 **MAS Integrated:** Built-in integration with MAS to permanently activate Windows.
* 🎨 **UI Refresh:** Automatically restarts Windows Explorer to apply theme changes.

---

## 🚀 How To Use

1. **Download** the `.bat` file.
2. **Right-click** the file and **Run as Administrator** (this is required to edit the registry files and run MAS).
3. **Choose an option** from the menu:
    * **Changing themes (Options 1 & 2):** Changes the system theme, then restarts Windows Explorer to apply the change.
    * **Remove Watermark (Option 3):** Removes the activation watermark. For this to take effect, you must restart your PC.
    * **MAS (Option 4):** Launches the external MAS interface. From this point forward, the user must follow the instructions provided by the MAS tool. I do not control the MAS interface; please use the [Official MAS Documentation](https://massgrave.dev) if you are unsure which activation method to choose.
    * **More Details (Option 5):** Opens the link to the official MAS project page.
    * **Exit (Option 6):** Closes the Windows Config Tool.

---

## 🤝 Giving Credit Where It Is Due

The activation logic in this script is powered by the **Microsoft Activation Scripts (MAS)** project by **massgravel**. 

* **Original Project:** [MAS GitHub Repository](https://github.com/massgravel/microsoft-activation-scripts)
* This batch file serves as a simplified wrapper and shortcut for their excellent work.

---

## ⚠️ Disclaimer

*This tool is provided for educational purposes only. Modifying the Windows Registry and activating software via third-party scripts can carry risks. The author is not responsible for any system instability, data loss, or legal issues arising from the use of this tool. Use at your own risk.*

## 📜 License

Distributed under the **GNU GPLv3 License**. See the `LICENSE` file in this repository for more information.
