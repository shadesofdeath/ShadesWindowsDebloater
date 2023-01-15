import os
import tkinter as tk
from tkinter import ttk
import sun_valley_titlebar

app_list = {
    "Cortana":"powershell.exe Remove-AppxPackage Microsoft.549981C3F5F10",
    "Bing":"powershell.exe Remove-AppxPackage Microsoft.BingNews",
    "Bing Weather":"powershell.exe Remove-AppxPackage Microsoft.BingWeather",
    "DesktopAppInstaller":"powershell.exe Remove-AppxPackage Microsoft.DesktopAppInstaller",
    "GamingApp":"powershell.exe Remove-AppxPackage Microsoft.GamingApp",
    "GetHelp":"powershell.exe Remove-AppxPackage Microsoft.GetHelp",
    "Getstarted":"powershell.exe Remove-AppxPackage Microsoft.Getstarted",
    "HEIFImageExtension":"powershell.exe Remove-AppxPackage Microsoft.HEIFImageExtension",
    "OfficeHub":"powershell.exe Remove-AppxPackage Microsoft.MicrosoftOfficeHub",
    "SolitaireCollection":"powershell.exe Remove-AppxPackage Microsoft.MicrosoftSolitaireCollection",
    "StickyNotes":"powershell.exe Remove-AppxPackage Microsoft.MicrosoftStickyNotes",
    "Paint":"Get-AppxPackage Microsoft.Paint | Remove-AppxPackage",
    "People":"powershell.exe Remove-AppxPackage Microsoft.People",
    "PowerAutomateDesktop":"powershell.exe Remove-AppxPackage Microsoft.PowerAutomateDesktop",
    "ScreenSketch":"powershell.exe Remove-AppxPackage Microsoft.ScreenSketch",
    "SecHealthUI":"powershell.exe Remove-AppxPackage Microsoft.SecHealthUI",
    "StorePurchaseApp":"powershell.exe Remove-AppxPackage Microsoft.StorePurchaseApp",
    "Todos":"powershell.exe Remove-AppxPackage Microsoft.Todos",
    "VP9VideoExtensions":"powershell.exe Remove-AppxPackage Microsoft.VP9VideoExtensions",
    "WebMediaExtensions":"powershell.exe Remove-AppxPackage Microsoft.WebMediaExtensions",
    "WebpImageExtension":"powershell.exe Remove-AppxPackage Microsoft.WebpImageExtension",
    "Windows.Photos":"powershell.exe Remove-AppxPackage Microsoft.Windows.Photos",
    "WindowsAlarms":"powershell.exe Remove-AppxPackage Microsoft.WindowsAlarms",
    "WindowsCalculator":"powershell.exe Remove-AppxPackage Microsoft.WindowsCalculator",
    "WindowsCamera":"powershell.exe Remove-AppxPackage Microsoft.WindowsCamera",
    "windowscommunicationsapps":"powershell.exe Remove-AppxPackage microsoft.windowscommunicationsapps",
    "WindowsFeedbackHub":"powershell.exe Remove-AppxPackage Microsoft.WindowsFeedbackHub",
    "WindowsMaps":"powershell.exe Remove-AppxPackage Microsoft.WindowsMaps",
    "WindowsNotepad":"powershell.exe Remove-AppxPackage Microsoft.WindowsNotepad",
    "SoundRecorder":"powershell.exe Remove-AppxPackage Microsoft.WindowsSoundRecorder",
    "WindowsStore":"powershell.exe Remove-AppxPackage Microsoft.WindowsStore",
    "Terminal":"powershell.exe Remove-AppxPackage Microsoft.WindowsTerminal",
    "Xbox.TCUI":"powershell.exe Remove-AppxPackage Microsoft.Xbox.TCUI",
    "XboxGameOverlay":"powershell.exe Remove-AppxPackage Microsoft.XboxGameOverlay",
    "XboxGamingOverlay":"powershell.exe Remove-AppxPackage Microsoft.XboxGamingOverlay",
    "XboxIdentityProvider":"powershell.exe Remove-AppxPackage Microsoft.XboxIdentityProvider",
    "XboxSpeechToTextOverlay":"powershell.exe Remove-AppxPackage Microsoft.XboxSpeechToTextOverlay",
    "YourPhone":"powershell.exe Remove-AppxPackage Microsoft.YourPhone",
    "ZuneMusic":"powershell.exe Remove-AppxPackage Microsoft.ZuneMusic",
    "ZuneVideo":"powershell.exe Remove-AppxPackage Microsoft.ZuneVideo",
    "Windows.Client.WebExperience":"powershell.exe Remove-AppxPackage MicrosoftWindows.Client.WebExperience",
    "Clipchamp":"powershell.exe Remove-AppxPackage Clipchamp.Clipchamp",
    "HEVCVideoExtension":"powershell.exe Remove-AppxPackage Microsoft.HEVCVideoExtension",
    "RawImageExtension":"powershell.exe Remove-AppxPackage Microsoft.RawImageExtension",
    "MicrosoftFamily":"powershell.exe Remove-AppxPackage MicrosoftCorporationII.MicrosoftFamily",         
    "QuickAssist":"powershell.exe Remove-AppxPackage MicrosoftCorporationII.QuickAssist",
    "Windows Notepad":"powershell.exe Remove-AppxPackage Microsoft.WindowsNotepad",
}

WINDOW_TITLE = "Shades Windows Debloater 11"
WINDOW_MINSIZE = (1000, 450)
WINDOW_POSITION = (500, 250)
root = tk.Tk()
root.overrideredirect(True)
root.maxsize(1000, 450)
root.minsize(WINDOW_MINSIZE[0], WINDOW_MINSIZE[1])
root.geometry(str(WINDOW_MINSIZE[0]) + "x" + str(WINDOW_MINSIZE[1]) + "+" + str(WINDOW_POSITION[0]) + "+" + str(WINDOW_POSITION[1]))
root.title(WINDOW_TITLE)

root.tk.call("source", "sun-valley.tcl")
root.tk.call("set_theme", "dark")

icon = tk.PhotoImage(file='feather.gif')

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

def apply_changes():
    for app, var in checkboxes:
        if var.get():
            os.system(app_list[app])

for i, app in enumerate(app_list):
    var = tk.IntVar()
    checkbox = ttk.Checkbutton(app_frame, text=app, variable=var)
    checkbox.grid(row=i//5, column=i%5, sticky="w")
    checkboxes.append((app, var))

apply_button = ttk.Button(app_frame, text="Apply", command=apply_changes)
apply_button.grid(row=(len(app_list)//5)+1, column=0, columnspan=5, pady=10)

# Content goes here, with master = big_frame
button = ttk.Button(big_frame, text="Change theme!", command=change_theme)
button.pack()

big_frame.pack(fill="both", expand=True)
root.mainloop()

   
