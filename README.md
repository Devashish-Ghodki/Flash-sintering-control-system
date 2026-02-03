# Flash Sinter Control - Installation & Usage Guide

## 🚀 Quick Start

### **Step 1: Initial Setup (One Time Only)**

1. **Copy the entire folder** to your computer (any location is fine)
2. **Double-click `setup_new_computer.bat`**
   - This will install all required Python packages
   - If you see "Python not found", follow the instructions below
3. Wait for: **"✅ All packages installed successfully!"**

**If Python is Not Installed:**
- The script will automatically open python.org for download
- During installation: **CHECK "Add Python to PATH"** ✅ (IMPORTANT!)
- Restart your computer after installation
- Run `setup_new_computer.bat` again

### **Step 2: Create Desktop Shortcut (Optional but Recommended)**

1. **Double-click `create_desktop_shortcut.bat`**
2. A shortcut named "Flash Voltage Control" will appear on your desktop
3. The shortcut uses the FlashSinterIcon.ico icon for easy identification

### **Step 3: Run the Application**

**Option A:** Double-click the desktop shortcut "Flash Voltage Control"

**Option B:** Double-click `flash_sinter_lab_mode.bat` in the program folder

The GUI will start and you can begin running experiments!

---

## 📋 System Requirements

- **Operating System:** Windows 10/11
- **Python:** Version 3.8 or higher
- **Internet Connection:** Required only for initial setup (to download packages)
- **Hardware:**
  - NI DAQ card (with NI-DAQmx drivers installed)
  - Keithley power supply (with VISA drivers installed)
  - Camera (optional, for video recording)

---

## 📦 What's Included

This package contains:

- **Main Application Files:**
  - `main.py` - Main entry point
  - `gui/` - GUI interface files
  - `controllers/` - Device control modules
  - `config/` - Configuration settings
  - `utils/` - Utility functions

- **Installation Scripts:**
  - `setup_new_computer.bat` - Installs all dependencies
  - `flash_sinter_lab_mode.bat` - Launches the application
  - `create_desktop_shortcut.bat` - Creates desktop shortcut

- **Configuration:**
  - `requirements.txt` - Python package dependencies
  - `config/settings.py` - Application settings

- **Data Folders:**
  - `data/` - Experiment data files (auto-created)
  - `videos/` - Video recordings (auto-created)
  - `logs/` - Application logs (auto-created)

---

## 🔧 Troubleshooting

### **Problem: "Python is not recognized"**
**Solution:** 
- Install Python from python.org
- Make sure to check "Add Python to PATH" during installation
- Restart your computer
- Run `setup_new_computer.bat` again

### **Problem: "Module not found" errors**
**Solution:**
- Run `setup_new_computer.bat` again to reinstall packages
- Make sure you have internet connection during setup

### **Problem: Application won't start**
**Solution:**
- Check the `logs/` folder for error messages
- Make sure all hardware drivers are installed (NI-DAQmx, VISA)
- Try running `python main.py` directly from command prompt to see error messages

### **Problem: Shortcut doesn't work**
**Solution:**
- Make sure you've run `setup_new_computer.bat` first
- Try running `create_desktop_shortcut.bat` as Administrator (right-click → Run as Administrator)
- Check that `flash_sinter_lab_mode.bat` exists in the same folder
- Verify that `FlashSinterIcon.ico` exists in the same folder (optional)

---

## 📖 Usage Instructions

1. **Start the Application:**
   - Double-click the desktop shortcut or `flash_sinter_lab_mode.bat`

2. **Configure Experiment Parameters:**
   - Set dwell time, voltage, current, and other parameters in the GUI

3. **Connect Hardware:**
   - Ensure DAQ card is connected and recognized
   - Connect Keithley power supply
   - Connect camera (if using video recording)

4. **Start Experiment:**
   - Click "Start Acquisition" button
   - Monitor real-time plots and data
   - Data is automatically saved to the `data/` folder

5. **Stop Experiment:**
   - Click "Stop" button when finished
   - Data files are saved automatically

---

## 📁 Folder Structure

```
Flash Sinter Control/
├── main.py                          # Main entry point
├── flash_sinter_lab_mode.bat        # Application launcher
├── setup_new_computer.bat           # Installation script
├── create_desktop_shortcut.bat      # Shortcut creator
├── requirements.txt                 # Python dependencies
├── README.md                        # This file
├── QUICK_START.md                   # Quick start guide
├── FlashSinterIcon.ico               # Application icon (optional)
├── config/                          # Configuration files
│   └── settings.py
├── controllers/                     # Control modules
│   ├── main_controller.py
│   ├── device_controller.py
│   └── daq_keithley_controller.py
├── gui/                             # GUI interface
│   └── flash_sinter_gui.py
├── utils/                           # Utility functions
│   ├── logger.py
│   └── helpers.py
├── data/                            # Experiment data (auto-created)
├── videos/                          # Video recordings (auto-created)
└── logs/                            # Application logs (auto-created)
```

---

## 🔄 Updating the Application

If you receive an updated version:

1. **Backup your data** (copy `data/` and `videos/` folders)
2. **Replace the entire folder** with the new version
3. **Run `setup_new_computer.bat`** again (to update packages)
4. **Run `create_desktop_shortcut.bat`** again (to update shortcut)

---

## 📞 Support

For issues or questions:
- Check the `logs/` folder for detailed error messages
- Review configuration in `config/settings.py`
- Ensure all hardware drivers are properly installed

---

## ✅ Installation Checklist

- [ ] Copied entire folder to computer
- [ ] Ran `setup_new_computer.bat` successfully
- [ ] Created desktop shortcut using `create_desktop_shortcut.bat`
- [ ] Tested launching application from shortcut
- [ ] Verified hardware connections (DAQ, Keithley, Camera)
- [ ] Ready to run experiments!

---

**That's it! You're ready to use Flash Sinter Control!** 🎉
