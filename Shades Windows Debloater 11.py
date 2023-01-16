import os
import tkinter as tk
from tkinter import ttk
from titlebar import sun_valley_titlebar
from tkinter import simpledialog
import time
import subprocess

app_list = {
    "Advertising App":"files\_advertisingapp.bat",
    "Alarms and Clock":"files\_alarmsclock.bat",
    "App Conector":"files\_appconnector.bat",
    "3D Builder":"files\_builder3d.bat",
    "Calculator":"files\_calculator.bat",
    "Camera":"files\_camera.bat",
    "App Installer":"files\_DesktopAppInstaller.bat",
    "Microsoft Edge":"files\_edge.bat",
    "Feedback Hub":"files\_feedbackhub.bat",
    "Get Help":"files\_GetHelp.bat",
    "Groove Music":"files\_groove.bat",
    "Group Me":"files\_groupme.bat",
    "HEIF Image Extensions":"files\_HEIF.bat",
    "Mail and Calendar":"files\_mailcalendar.bat",
    "Microsoft Maps":"files\_maps.bat",
    "Microsoft Messaging":"files\_Messaging.bat",
    "Microsoft To Do":"files\_microsofttodo.bat",
    "Mixed Reality":"files\_mixedreality.bat",
    "Mobile Plans":"files\_mobileplans.bat",
    "Microsoft Money":"files\_money.bat",
    "Movies And TV":"files\_movies.bat",
    "My Office":"files\_myoffice.bat",
    "Network Speed Test":"files\_networkspeedtest.bat",
    "Microsoft News":"files\_news.bat",
    "OneDrive":"files\_onedrive.bat",
    "OneNote":"files\_onenote.bat",
    "Paint 3D":"files\_paint.bat",
    "Microsft Pay":"files\_advertisingapp.bat",
    "Microsft People":"files\_people.bat",
    "Microsft Photos":"files\_photos.bat",
    "Print 3D":"files\_print.bat",
    "Store Purchase":"files\_purchase.bat",
    "Remote Desktop":"files\_remotedesktop.bat",
    "Skype":"files\_skype.bat",
    "Snip & Sketch":"files\_snipsketch.bat",
    "Solitaire Collection":"files\_soiltare.bat",
    "MSN Sports":"files\_sports.bat",
    "Spotify":"files\_spotify.bat",
    "Sticky Notes":"files\_stickynotes.bat",
    "Microsoft Store":"files\_store.bat",
    "Microsoft Sway":"files\_sway.bat",
    "Microsoft Tips":"files\_Tips.bat",
    "3D Viewer":"files\_viewer3d.bat",
    "Voice Recorder":"files\_voicerecorder.bat",
    "VP9 Video Extensions":"files\_vp9.bat",
    "MSN Weather":"files\_weather.bat",
    "Web Media Extensions":"files\_webextensions.bat",
    "Webp Image Extensions":"files\_webp.bat",
    "Xbox":"files\_xbox.bat",
    "Your Phone":"files\_yourphone.bat",
}

WINDOW_TITLE = "Shades Windows Debloater - Windows 10/11"
WINDOW_MINSIZE = (850, 480)
WINDOW_POSITION = (500, 250)
root = tk.Tk()
root.overrideredirect(True)
root.maxsize(850, 480)
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

def apply_changes():
    for app, var in checkboxes:
        if var.get():
            subprocess.Popen(app_list[app], creationflags=subprocess.CREATE_NO_WINDOW)
            time.sleep(5) # timer için 3 saniye bekle
    simpledialog.messagebox.showinfo("Shades Windows Debloater!","Process completed!")

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

   
