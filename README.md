# RPI-MediaPlayer


## Set up
 
 
### Needed Hardware
- You will need the following hardware
- A Raspberry Pi 
- Power supply 
- Keyboard and mouse
- Some type of speaker
- A monitor
- A micro SD card with at least 8GB of storage
- A usb drive with one supported audio or video file. 

### Getting a USB Drive Ready
The only thing you need to have on the USB drive is an audio or video file. To see the supported file formats, look under the section "Supported File Formats" of this document. 


### Getting a Micro SD Card Ready

### Needed Software
Download and Install the Following Programs and Files onto your Main Computer
- Balena Etcher https://www.balena.io/etcher/
- 7zip https://www.7-zip.org/download.html
- Raspbian Buster with desktop and recommended software download the ZIP https://www.raspberrypi.org/downloads/raspbian/ 

When the Raspbian zip has finished downloading, open 7-Zip. In 7-Zip, navigate to where the Rasbian zip file is located and extract it by pressing the extract button located at the top of the application. When the popup box opens, choose where you want the extracted file to be located and click "Okay." When the file is extracted you should have a '.img' file. 

Now open Balena Etcher and insert your micro SD card. In Balena Etcher, select the Rasbian .img file from your computer. Next, select the target (this is the micro SD card) and then press "Flash." This will take a few moments. Once this is completed you might be prompted to format or fix the micro SD card, **DO NOT DO THIS**. Remove the micro SD card and insert it into the Raspberry Pi. 


### Download the Repository, Copying the File, and Setting Up the Program
On the Raspberry Pi, open the Terminal. Type in the following command into the terminal and press enter. 

`git clone https://github.com/baldyjohnmichael/RPI-MediaPlayer.git`

Now copy the file run.sh to the /home/pi directory. Use the following command in the terminal and press enter. 

`sudo cp RPI-MediaPlayer/run.sh /home/pi`


### Changing Audio Output Source
The default audio output source for the file is the 3.5mm aux output. You can change this to HDMI audio output by doing the following. 
In the terminal enter the command 

`sudo nano run.sh`

Navigate down to the line that starts with "/usr/bin/omxplayer". Now delete "-o local" and type "--adev hdmi" in its place. Hit "ctrl+x" to exit followed by "Y" to save the file and "Enter" to confirm. 

### Making the file executable and run at startup. 
After this, you must make the file executable. Type this command into the terminal and press enter. 

`sudo chmod ugo+x startup.sh`

Make sure everything is working by inserting a USB drive that has support media file format on it. Now enter the following command in the terminal to run the script. 

`./run.sh`

To exit the program simply press "ctrl + c" twice. 

 Now to make the program autostart whenever the Raspberry Pi is powered on enter the following command in the terminal
 
`$ nano ~/.bashrc`

Go to the last line and add:

`bash run.sh`

After adding those lines to the file, hit "ctrl+x", "Y", "Enter" to save the file. 
Now you should be able to enter the command "sudo reboot" into the terminal and the program should start automatically. 
 
### Using ProgramUsing Program
Supported File Formats

Video
- MP4
- AVI
- MOV

Audio
- MP3
- WAV



 
### Helpful keys during playback
The full list of key commands can be found here. (https://www.raspberrypi.org/documentation/raspbian/applications/omxplayer.md) But a few useful ones are listed below. 
q: exit omxplayer
p / space: pause/resume

Exiting Program
You can exit the program in the following ways. 
Enter "Ctrl+C" "Ctrl+C"
or
Hit "q" followed by "Ctrl+C"



### Software Used
- Balena Etcher https://www.balena.io/etcher/
- 7zip https://www.7-zip.org/download.html
- Raspbian Buster with desktop and recommended software download the ZIP https://www.raspberrypi.org/downloads/raspbian/ 
- OMXPlayer https://www.raspberrypi.org/documentation/raspbian/applications/omxplayer.md




### Known Issues
The keyboard isn't always recognized when you start the application. The best way I've found to get control back is to click the mouse a few times and then check to see if the keyboard has regained functionality. 
 

