import os
import tkinter as tk
from tkinter import ttk
from titlebar import sun_valley_titlebar
from tkinter import simpledialog
import time
import subprocess

app_list = {
    "Clipchamp.Clipchamp":"Clipchamp",
    "Microsoft.Print3D":"Print 3D",
    "MicrosoftTeams":"Microsoft Teams",
    "Microsoft.Todos":"Microsoft Todos",
	"Microsoft.549981C3F5F10":"Cortana",
	"Microsoft.BingWeather":"Bing Weather",
	"Microsoft.DesktopAppInstaller":"App Installer",
	"Microsoft.GetHelp":"Get Help",
	"Microsoft.Getstarted":"Get Started",
	"Microsoft.HEIFImageExtension":"HEIF Image Extension",
	"Microsoft.Microsoft3DViewer":"3DViewer",
	"Microsoft.MicrosoftOfficeHub":"OfficeHub",
	"Microsoft.MicrosoftSolitaireCollection":"SolitaireCollection",
	"Microsoft.MicrosoftStickyNotes":"StickyNotes",
	"Microsoft.MixedReality.Portal":"Mixed Reality Portal",
	"Microsoft.MSPaint":"Microsoft Paint",
	"Microsoft.Office.OneNote":"Office OneNote",
	"Microsoft.People":"Microsoft People",
	"Microsoft.ScreenSketch":"Screen Sketch",
	"Microsoft.SkypeApp":"Skype",
	"Microsoft.StorePurchaseApp":"Store Purchase App",
	"Microsoft.VP9VideoExtensions":"VP9 Video Extensions",
	"Microsoft.Wallet":"Microsoft Wallet",
	"Microsoft.WebMediaExtensions":"Web Media Extensions",
    "Microsoft.RawImageExtension":"Raw Image Extension",
	"Microsoft.WebpImageExtension":"Webp Image Extension",
    "Microsoft.HEVCVideoExtension":"HEVC Video Extension",
	"Microsoft.Windows.Photos":"Windows Photos",
	"Microsoft.WindowsAlarms":"Windows Alarms",
	"Microsoft.WindowsCalculator":"Windows Calculator",
	"Microsoft.WindowsCamera":"Windows Camera",
	"Microsoft.windowscommunicationsapps":"Communications Apps",
	"Microsoft.WindowsFeedbackHub":"FeedbackHub",
	"Microsoft.WindowsMaps":"Windows Maps",
	"Microsoft.WindowsSoundRecorder":"Sound Recorder",
	"Microsoft.WindowsStore":"Windows Store",
	"Microsoft.Xbox.TCUI":"Xbox TCUI",
	"Microsoft.XboxApp":"Xbox App",
	"Microsoft.XboxGameOverlay":"Xbox Game Overlay",
	"Microsoft.XboxGamingOverlay":"Xbox Gaming Overlay",
	"Microsoft.XboxIdentityProvider":"Xbox Identity Provider",
	"Microsoft.XboxSpeechToTextOverlay":"XboxSpeechToTextOverlay",
	"Microsoft.YourPhone":"Your Phone",
	"Microsoft.ZuneMusic":"Zune Music",
	"Microsoft.ZuneVideo":"Zune Video",
}

WINDOW_TITLE = "Shades Debloater - Windows 10"
WINDOW_MINSIZE = (780, 500)
WINDOW_POSITION = (500, 250)
root = tk.Tk()
root.overrideredirect(True)
root.maxsize(780, 500)
root.minsize(WINDOW_MINSIZE[0], WINDOW_MINSIZE[1])
root.geometry(str(WINDOW_MINSIZE[0]) + "x" + str(WINDOW_MINSIZE[1]) + "+" + str(WINDOW_POSITION[0]) + "+" + str(WINDOW_POSITION[1]))
root.title(WINDOW_TITLE)

root.tk.call("source", "tema/sun-valley.tcl")
root.tk.call("set_theme", "dark")
icon = tk.PhotoImage(file='assets/titlelogo.png')
root.iconbitmap(default='assets/tasklogo.ico')

def change_theme():
    if root.tk.call("ttk::style", "theme", "use") == "sun-valley-dark":
        root.tk.call("set_theme", "light")
    else:
        root.tk.call("set_theme", "dark")

big_frame = ttk.Frame(root)
titlebar = sun_valley_titlebar.Titlebar(root, big_frame, icon, WINDOW_TITLE, True, True, True, WINDOW_MINSIZE[0], WINDOW_MINSIZE[1])
menubar = sun_valley_titlebar.Menubar(root)
app_frame = ttk.Frame(big_frame)
app_frame.pack()

checkboxes = []

def toggle_all():
    for _, var in checkboxes:
        var.set(not var.get())

def apply_changes():
    bat_file = open("remove_app.bat", "w")
    bat_file.write("@echo off\nif not \"%1\"==\"am_admin\" (powershell start -verb runas '%0' am_admin & exit /b)\n")
    for app, var in checkboxes:
        if var.get():
            bat_file.write("PowerShell -ExecutionPolicy Unrestricted -Command \"Get-AppxPackage '" + app + "' | Remove-AppxPackage\"\n")
    bat_file.close()
    subprocess.Popen("remove_app.bat", creationflags=subprocess.CREATE_NO_WINDOW)

for i, (key, value) in enumerate(app_list.items()):
    var = tk.IntVar()
    checkbox = ttk.Checkbutton(app_frame, text=value, variable=var)
    checkbox.grid(row=i//4, column=i%4, sticky="w")
    checkboxes.append((key, var))

grid_frame = ttk.Frame(big_frame)
grid_frame.pack()
grid_frame.columnconfigure(0, minsize=150)
grid_frame.columnconfigure(1, minsize=150)
grid_frame.columnconfigure(2, minsize=190)

apply_button = ttk.Button(grid_frame, text="Debloat", command=apply_changes)
apply_button.grid(row=1, column=0, columnspan=1, padx=40, pady=40)

toggle_all_button = ttk.Button(grid_frame, text="Select All", command=toggle_all)
toggle_all_button.grid(row=1, column=1, columnspan=1, padx=40, pady=40)

button = ttk.Button(grid_frame, text="Change theme!", command=change_theme)
button.grid(row=1, column=2, columnspan=1, padx=40, pady=40)


big_frame.pack(fill="both", expand=True)
root.mainloop()