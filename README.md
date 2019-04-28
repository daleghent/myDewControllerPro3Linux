# myDewControllerPro3Linux
(c) Robert Brown 2019. All rights reserved.

You may freely use and distribute these files as long as the authors name and copyright message is NOT removed from the source code or application. You must acknowledge the orginal author in all distributions and provide a link back to this repository.

## Build Instructions
- Download or clone this repositort. Download Lazarus Free Pascal v1.8.4 for YOUR system https://sourceforge.net/projects/lazarus/files/ 
- Install Lazarus on your Unix system
- Make a folder on your home folder/desktop of your Linux system
- Unzip the repository zip file into that folder
- Start Lazarus application - Open project
- Browse to that folder and open the project1.lpr file
- To recreate the exceutable, Run - Compile
- To test, Run, Run

## Moving the executable to another folder
- Copy both the myDewControllerPro3-Linux executable file and the myDewControllerPro3-Linux.ini file
- You must be a member of the group tty. Use menu, administration, users and groups, manage groups, tty, properties and ensure that your name is checked, then click OK
- Change the rights on the file, chmod +x myDewControllerPro3Linux or you can right mouse click the file, properties, permissions and check allow executing file as program
- I had to right mouse click file and chose run as adminstrator. It seems it cannot connect to tty0 device without admin priviledge


