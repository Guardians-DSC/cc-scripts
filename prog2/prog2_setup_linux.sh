#!/bin/bash

#Java
sudo apt-get purge openjdk*
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update 
sudo apt-get install oracle-java9-installer

#Eclipse
rm -Rf /opt/eclipse/
rm -Rf /usr/share/applications/eclipse.desktop

if [ $(uname -m) = "" ];
   then
      wget -c http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/oxygen/2/eclipse-jee-oxygen-2-linux-gtk-x86_64.tar.gz -O eclipse.tar.gz
      else
         wget -c http://eclipse.c3sl.ufpr.br/technology/epp/downloads/release/oxygen/2/eclipse-jee-oxygen-2-linux-gtk.tar.gz -O eclipse.tar.gz
   fi

sudo tar -zxvf eclipse.tar.gz -C /opt/
sudo mv /opt/eclipse*/ /opt/eclipse
sudo wget https://dl2.macupdate.com/images/icons128/11662.png -O /opt/eclipse/eclipse.png
echo -e '[Desktop Entry]\n Version=1.0\n Name=eclipse\n Exec=/opt/eclipse/eclipse\n Icon=/opt/eclipse/eclipse.png\n Type=Application\n Categories=Application' | sudo tee /usr/share/applications/eclipse.desktop
