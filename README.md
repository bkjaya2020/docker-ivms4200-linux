# docker-ivms4200-linux
ivms4200-linux docker image for Linux platforms . Based on solarkennedy/wine-x11-novnc-docker
# bkjaya1952/docker-ivms4200-linux

This image has been created based on repository solarkennedy/wine-x11-novnc-docker . This repository bkjaya1952/docker-ivms4200-linux can be used in Linux platforms to configure Hikvision IP Cameras easily. 

First I must be thankful to Kyle Anderson for providing us a very useful repository solarkennedy/wine-x11-novnc-docker. Nicolas SAPA,  a main contributor of solarkennedy/wine-x11-novnc-docker , helped me by making some changes in solarkennedy/wine-x11-novnc-docker , to facilitate in running  my app successfully.

Usage :-

To create a ivms container (name ivms)  using bkjaya1952/docker-ivms4200-linux

On the Ubuntu terminal

<code>sudo docker create -t -p 8008:8080 --name ivms bkjaya1952/docker-ivms4200-linux</code>

<code>sudo docker start ivms</code>

<code>xdg-open http://localhost:8008</code>

Then the desktop will appear on the web browser

On the desktop, right click the mouse to get the fluxbox menu

<img src="https://raw.githubusercontent.com/bkjaya2020/docker-ivms4200-linux/master/Screenshot%20from%202020-02-15%2011-27-30.png" alt="https://raw.githubusercontent.com/bkjaya2020/docker-ivms4200-linux/master/Screenshot%20from%202020-02-15%2011-27-30.png" class="shrinkToFit" width="625" height="520">


<img src="https://raw.githubusercontent.com/bkjaya2020/docker-ivms4200-linux/master/Screenshot%20from%202020-02-15%2009-42-22.png" alt="https://raw.githubusercontent.com/bkjaya2020/docker-ivms4200-linux/master/Screenshot%20from%202020-02-15%2009-42-22.png" class="shrinkToFit" width="625" height="520">


On the menu go to sub menus and ckick  Applications>Shells>Bash

Now the configuration panel of ivms4200 will appear so that you can add your Hikvision cameras.

How to change the timezone

After quitting the ivms4200  

On the terminal enter

<code>vim /etc/timezone</code>

Then the timezone file is opened 

Go to the top line of the file ,  press insert key or your key board and enter your timezone ( ie    Asia/Colombo)

Then press the Esc key and Shift :x to save & quit  the file

